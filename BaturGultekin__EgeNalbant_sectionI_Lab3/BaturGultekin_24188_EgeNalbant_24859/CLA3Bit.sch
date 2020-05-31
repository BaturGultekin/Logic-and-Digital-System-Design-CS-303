<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="P2" />
        <signal name="P1" />
        <signal name="P0" />
        <signal name="C0" />
        <signal name="G0" />
        <signal name="G1" />
        <signal name="G2" />
        <signal name="C3" />
        <signal name="C2" />
        <signal name="C1" />
        <port polarity="Input" name="P2" />
        <port polarity="Input" name="P1" />
        <port polarity="Input" name="P0" />
        <port polarity="Input" name="C0" />
        <port polarity="Input" name="G0" />
        <port polarity="Input" name="G1" />
        <port polarity="Input" name="G2" />
        <port polarity="Output" name="C3" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="C1" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="or4" name="XLXI_1">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="G2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_7" name="I3" />
            <blockpin signalname="C3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="G0" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="P2" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_2">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="G1" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="C2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="G0" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="C1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="P1" name="I0" />
            <blockpin signalname="P0" name="I1" />
            <blockpin signalname="C0" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_15">
            <blockpin signalname="C0" name="I0" />
            <blockpin signalname="P0" name="I1" />
            <blockpin signalname="P1" name="I2" />
            <blockpin signalname="P2" name="I3" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="G1" name="I0" />
            <blockpin signalname="P2" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="P1" name="I0" />
            <blockpin signalname="G0" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="P0" name="I0" />
            <blockpin signalname="C0" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="608" name="XLXI_4" orien="R0" />
        <instance x="1856" y="768" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1296" y1="480" y2="480" x1="1280" />
            <wire x2="1296" y1="480" y2="576" x1="1296" />
            <wire x2="1856" y1="576" y2="576" x1="1296" />
        </branch>
        <instance x="1840" y="1648" name="XLXI_2" orien="R0" />
        <instance x="1840" y="2032" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1824" y1="1328" y2="1328" x1="1456" />
            <wire x2="1824" y1="1328" y2="1456" x1="1824" />
            <wire x2="1840" y1="1456" y2="1456" x1="1824" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1840" y1="240" y2="240" x1="1280" />
            <wire x2="1840" y1="240" y2="512" x1="1840" />
            <wire x2="1856" y1="512" y2="512" x1="1840" />
        </branch>
        <instance x="1024" y="400" name="XLXI_15" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1840" y1="768" y2="768" x1="1280" />
            <wire x2="1856" y1="704" y2="704" x1="1840" />
            <wire x2="1840" y1="704" y2="768" x1="1840" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1824" y1="1600" y2="1600" x1="1440" />
            <wire x2="1840" y1="1584" y2="1584" x1="1824" />
            <wire x2="1824" y1="1584" y2="1600" x1="1824" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1824" y1="1856" y2="1856" x1="1456" />
            <wire x2="1824" y1="1856" y2="1904" x1="1824" />
            <wire x2="1840" y1="1904" y2="1904" x1="1824" />
        </branch>
        <instance x="1024" y="864" name="XLXI_16" orien="R0" />
        <instance x="1200" y="1456" name="XLXI_5" orien="R0" />
        <instance x="1184" y="1696" name="XLXI_17" orien="R0" />
        <instance x="1200" y="1952" name="XLXI_18" orien="R0" />
        <branch name="P2">
            <wire x2="624" y1="144" y2="144" x1="592" />
            <wire x2="1008" y1="144" y2="144" x1="624" />
            <wire x2="1024" y1="144" y2="144" x1="1008" />
            <wire x2="624" y1="144" y2="416" x1="624" />
            <wire x2="1024" y1="416" y2="416" x1="624" />
            <wire x2="624" y1="416" y2="736" x1="624" />
            <wire x2="1024" y1="736" y2="736" x1="624" />
        </branch>
        <iomarker fontsize="28" x="592" y="144" name="P2" orien="R180" />
        <branch name="P1">
            <wire x2="656" y1="208" y2="208" x1="592" />
            <wire x2="1008" y1="208" y2="208" x1="656" />
            <wire x2="1024" y1="208" y2="208" x1="1008" />
            <wire x2="656" y1="208" y2="480" x1="656" />
            <wire x2="1024" y1="480" y2="480" x1="656" />
            <wire x2="656" y1="480" y2="1392" x1="656" />
            <wire x2="1200" y1="1392" y2="1392" x1="656" />
            <wire x2="656" y1="1392" y2="1632" x1="656" />
            <wire x2="1184" y1="1632" y2="1632" x1="656" />
        </branch>
        <iomarker fontsize="28" x="592" y="208" name="P1" orien="R180" />
        <branch name="P0">
            <wire x2="688" y1="272" y2="272" x1="592" />
            <wire x2="1008" y1="272" y2="272" x1="688" />
            <wire x2="1024" y1="272" y2="272" x1="1008" />
            <wire x2="688" y1="272" y2="1328" x1="688" />
            <wire x2="1200" y1="1328" y2="1328" x1="688" />
            <wire x2="688" y1="1328" y2="1888" x1="688" />
            <wire x2="1200" y1="1888" y2="1888" x1="688" />
        </branch>
        <iomarker fontsize="28" x="592" y="272" name="P0" orien="R180" />
        <branch name="C0">
            <wire x2="720" y1="336" y2="336" x1="592" />
            <wire x2="1008" y1="336" y2="336" x1="720" />
            <wire x2="1024" y1="336" y2="336" x1="1008" />
            <wire x2="720" y1="336" y2="1264" x1="720" />
            <wire x2="1200" y1="1264" y2="1264" x1="720" />
            <wire x2="720" y1="1264" y2="1824" x1="720" />
            <wire x2="1200" y1="1824" y2="1824" x1="720" />
        </branch>
        <iomarker fontsize="28" x="592" y="336" name="C0" orien="R180" />
        <branch name="G0">
            <wire x2="752" y1="544" y2="544" x1="592" />
            <wire x2="1008" y1="544" y2="544" x1="752" />
            <wire x2="1024" y1="544" y2="544" x1="1008" />
            <wire x2="752" y1="544" y2="1568" x1="752" />
            <wire x2="1184" y1="1568" y2="1568" x1="752" />
            <wire x2="752" y1="1568" y2="1968" x1="752" />
            <wire x2="1840" y1="1968" y2="1968" x1="752" />
        </branch>
        <iomarker fontsize="28" x="592" y="544" name="G0" orien="R180" />
        <branch name="G1">
            <wire x2="784" y1="800" y2="800" x1="592" />
            <wire x2="1008" y1="800" y2="800" x1="784" />
            <wire x2="1024" y1="800" y2="800" x1="1008" />
            <wire x2="784" y1="800" y2="1520" x1="784" />
            <wire x2="1840" y1="1520" y2="1520" x1="784" />
        </branch>
        <iomarker fontsize="28" x="592" y="800" name="G1" orien="R180" />
        <branch name="G2">
            <wire x2="1840" y1="640" y2="640" x1="592" />
            <wire x2="1856" y1="640" y2="640" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="592" y="640" name="G2" orien="R180" />
        <branch name="C3">
            <wire x2="2144" y1="608" y2="608" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="608" name="C3" orien="R0" />
        <branch name="C2">
            <wire x2="2128" y1="1520" y2="1520" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1520" name="C2" orien="R0" />
        <branch name="C1">
            <wire x2="2128" y1="1936" y2="1936" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1936" name="C1" orien="R0" />
    </sheet>
</drawing>