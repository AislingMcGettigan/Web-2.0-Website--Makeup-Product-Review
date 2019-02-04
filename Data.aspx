<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="FinalProject.Data" %>


!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="http://mbostock.github.com/d3/d3.js"></script>
</head>
<body>
    <div id="visual"></div>
    <script type="text/javascript">

        var sampleSVG = d3.select("#viz")
            .append("svg")
            .attr("width", 100)
            .attr("height", 100);

        sampleSVG.append("circle")
            .style("stroke", "gray")
            .style("fill", "white")
            .attr("r", 40)
            .attr("cx", 50)
            .attr("cy", 50)
            .on("mouseover", function () { d3.select(this).style("fill", "aliceblue"); })
            .on("mouseout", function () { d3.select(this).style("fill", "white"); });

        <svg width="100" height="100">
            <circle style="stroke: #808080; fill: #F0F8FF; " r="40" cx="50" cy="50"></circle>
        </svg>

        d3.text("tags.csv", function (datasetText) {

            var parsedCSV = d3.csv.parseRows(datasetText);
   </script>
</body>
</html>
