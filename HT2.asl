state("king") {
    // double mons: 0x28C454, 0x88;
    double mono: 0x28C454, 0x300;
    double tonn: 0x28C454, 0x308;
}

startup {
    settings.Add("51%", true, "Split at 51%");
    settings.SetToolTip("51%", "Splits when you monopolize the market");

    settings.Add("Split by %");
    settings.SetToolTip("Split by %", "Split by Percentage");

    for (int p = 5; p <= 100; p += 5) {
        settings.Add(p + "%", false, p + "%", "Split by %");
    }

    vars.completed = new HashSet<int>();
}

onReset {
    vars.completed.Clear();
}

start {
    return old.tonn == 0d && current.tonn > 0d;
}

split {
    // don't care when percentage decreased or stayed the same
    if (old.mono >= current.mono) {
        return;
    }

    var perce = (int)(current.mono * 100);
    perce -= settings.ContainsKey(perce + "%") ? 0 : (perce % 5);

    return settings[perce + "%"] && vars.completed.Add(perce);
}

reset  {
    return old.tonn > 0d && current.tonn == 0d;
}
