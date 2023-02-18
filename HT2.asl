
state("king") {
    double tonn: 0x28C454, 0x308;
    double mons: 0x28C454, 0x88;
    double mono: 0x28C454, 0x300;
    
}

init {
    vars.ten = false;
    vars.five = false;
    vars.fifte = false;
    vars.twent = false;
    vars.twentf = false;
    vars.thir = false;
    vars.thirf = false;
    vars.fourt = false;
    vars.fourtf = false;
    vars.fift = false;
    vars.fifto = false;
    vars.fiftf = false;
    vars.sixt = false;
    vars.sixtf = false;
    vars.sevent = false;
    vars.seventf = false;
    vars.eightt = false;
    vars.eighttf = false;
    vars.nint = false;
    vars.nintf = false;
    vars.hund = false;
}

startup
{
    settings.Add("Split at 51%");
    settings.SetToolTip("Split at 51%", "Splits when you monopolize the market");
    settings.Add("Split by %");
    settings.SetToolTip("Split by %", "Split by Percentage");
    settings.Add("5", false, "5%", "Split by %");
    settings.Add("10", false, "10%", "Split by %");
    settings.Add("15", false, "15%", "Split by %");
    settings.Add("20", false, "20%", "Split by %");
    settings.Add("25", false, "25%", "Split by %");
    settings.Add("30", false, "30%", "Split by %");
    settings.Add("35", false, "35%", "Split by %");
    settings.Add("40", false, "40%", "Split by %");
    settings.Add("45", false, "45%", "Split by %");
    settings.Add("50", false, "50%", "Split by %");
    settings.Add("55", false, "55%", "Split by %");
    settings.Add("60", false, "60%", "Split by %");
    settings.Add("65", false, "65%", "Split by %");
    settings.Add("70", false, "70%", "Split by %");
    settings.Add("75", false, "75%", "Split by %");
    settings.Add("80", false, "80%", "Split by %");
    settings.Add("85", false, "85%", "Split by %");
    settings.Add("90", false, "90%", "Split by %");
    settings.Add("95", false, "95%", "Split by %");
    settings.Add("100", false, "100%", "Split by %");
 
}

start
{
    if(current.tonn > 0) {
        return true;
    }
    return false;
}

split
{

    vars.perce = (current.mono) * 100;
    if (current.mono >= .05 && !vars.five && settings["5"]){
        vars.five = true;
        return true;
    }
    if (current.mono >= .1 && !vars.ten && settings["10"]){
        vars.ten = true;
        return true;
    }
    if (current.mono >= .15 && !vars.fifte && settings["15"]){
        vars.fifte = true;
        return true;
    }
    if (current.mono >= .2 && !vars.twent && settings["20"]){
        vars.twent = true;
        return true;
    }
    if (current.mono >= .25 && !vars.twentf && settings["25"]){
        vars.twentf = true;
        return true;
    }
    if (current.mono >= .3 && !vars.thir && settings["30"]){
        vars.thir = true;
        return true;
    }
    if (current.mono >= .35 && !vars.thirf && settings["35"]){
        vars.thirf = true;
        return true;
    }
    if (current.mono >= .4 && !vars.fourt && settings["40"]){
        vars.fourt = true;
        return true;
    }
    if (current.mono >= .45 && !vars.fourtf && settings["45"]){
        vars.fourtf = true;
        return true;
    }
    if (current.mono >= .5 && !vars.fift && settings["50"]){
        vars.fift = true;
        return true;
    }
    if (current.mono >= .51 && !vars.fifto && settings["Split at 51%"]){
        vars.fifto = true;
        return true;
    }
    if (current.mono >= .55 && !vars.fiftf && settings["55"]){
        vars.fiftf = true;
        return true;
    }
    if (current.mono >= .6 && !vars.sixt && settings["60"]){
        vars.sixt = true;
        return true;
    }
    if (current.mono >= .65 && !vars.sixtf && settings["65"]){
        vars.sixtf = true;
        return true;
    }
    if (current.mono >= .7 && !vars.sevent && settings["70"]){
        vars.sevent = true;
        return true;
    }
    if (current.mono >= .75 && !vars.seventf && settings["75"]){
        vars.seventf = true;
        return true;
    }
    if (current.mono >= .8 && !vars.eightt && settings["80"]){
        vars.eightt = true;
        return true;
    }
    if (current.mono >= .85 && !vars.eighttf && settings["85"]){
        vars.eighttf = true;
        return true;
    }
    if (current.mono >= .9 && !vars.nint && settings["90"]){
        vars.nint = true;
        return true;
    }
    if (current.mono >= .95 && !vars.nintf && settings["95"]){
        vars.nintf = true;
        return true;
    }
    if (current.mono >= 1 && !vars.hund && settings["100"]){
        vars.hund = true;
        return true;
    }
    return false;
}

reset 
{
    if (current.tonn == 0) {
    vars.ten = false;
    vars.five = false;
    vars.fifte = false;
    vars.twent = false;
    vars.twentf = false;
    vars.thir = false;
    vars.thirf = false;
    vars.fourt = false;
    vars.fourtf = false;
    vars.fift = false;
    vars.fifto = false;
    vars.fiftf = false;
    vars.sixt = false;
    vars.sixtf = false;
    vars.sevent = false;
    vars.seventf = false;
    vars.eightt = false;
    vars.eighttf = false;
    vars.nint = false;
    vars.nintf = false;
    vars.hund = false;
        return true;
    }
}