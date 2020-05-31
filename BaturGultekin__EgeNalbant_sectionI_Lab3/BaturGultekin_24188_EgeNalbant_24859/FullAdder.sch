<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Sum" />
        <signal name="Carry" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Sum" />
        <port polarity="Output" name="Carry" />
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
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="Carry" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_7">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="Sum" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1120" name="XLXI_3" orien="R0" />
        <instance x="1568" y="1264" name="XLXI_4" orien="R0" />
        <instance x="1568" y="1408" name="XLXI_5" orien="R0" />
        <instance x="2064" y="1296" name="XLXI_6" orien="R0" />
        <instance x="1616" y="912" name="XLXI_7" orien="R0" />
        <branch name="A">
            <wire x2="1456" y1="720" y2="720" x1="1424" />
            <wire x2="1600" y1="720" y2="720" x1="1456" />
            <wire x2="1616" y1="720" y2="720" x1="1600" />
            <wire x2="1456" y1="720" y2="992" x1="1456" />
            <wire x2="1568" y1="992" y2="992" x1="1456" />
            <wire x2="1456" y1="992" y2="1136" x1="1456" />
            <wire x2="1568" y1="1136" y2="1136" x1="1456" />
        </branch>
        <branch name="B">
            <wire x2="1488" y1="784" y2="784" x1="1424" />
            <wire x2="1600" y1="784" y2="784" x1="1488" />
            <wire x2="1616" y1="784" y2="784" x1="1600" />
            <wire x2="1488" y1="784" y2="1056" x1="1488" />
            <wire x2="1568" y1="1056" y2="1056" x1="1488" />
            <wire x2="1488" y1="1056" y2="1280" x1="1488" />
            <wire x2="1568" y1="1280" y2="1280" x1="1488" />
        </branch>
        <branch name="C">
            <wire x2="1504" y1="848" y2="848" x1="1424" />
            <wire x2="1600" y1="848" y2="848" x1="1504" />
            <wire x2="1616" y1="848" y2="848" x1="1600" />
            <wire x2="1504" y1="848" y2="1200" x1="1504" />
            <wire x2="1568" y1="1200" y2="1200" x1="1504" />
            <wire x2="1504" y1="1200" y2="1344" x1="1504" />
            <wire x2="1568" y1="1344" y2="1344" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1424" y="720" name="A" orien="R180" />
        <iomarker fontsize="28" x="1424" y="784" name="B" orien="R180" />
        <iomarker fontsize="28" x="1424" y="848" name="C" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="2064" y1="1024" y2="1024" x1="1824" />
            <wire x2="2064" y1="1024" y2="1104" x1="2064" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2064" y1="1168" y2="1168" x1="1824" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2064" y1="1312" y2="1312" x1="1824" />
            <wire x2="2064" y1="1232" y2="1312" x1="2064" />
        </branch>
        <branch name="Sum">
            <wire x2="1904" y1="784" y2="784" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="784" name="Sum" orien="R0" />
        <branch name="Carry">
            <wire x2="2352" y1="1168" y2="1168" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1168" name="Carry" orien="R0" />
    </sheet>
</drawing>