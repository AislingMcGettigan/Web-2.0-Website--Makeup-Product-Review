<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataVisualisationComments.aspx.cs" Inherits="FinalProject.data_visualisation" %>
<asp:Content ProductName="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

      .bar{
        fill: steelblue;
      }

      .bar:hover{
        fill: brown;
      }

	    .axis {
	      font: 13px sans-serif;
          
	    }

	    .axis path,
	    .axis line {
	      fill: none;
	      stroke: #000;
	      shape-rendering: crispEdges;
	    }
    }

	</style>

    <h3>Product Comment Count Bar Chart</h3>
    <div class="holderDiv" >

    </div>

    <script>
        // set the dimensions of the canvas
        var margin = { top: 25, right: 20, bottom: 200, left: 40 },
            width = 1000 - margin.left - margin.right,
            height = 750 - margin.top - margin.bottom;


        // set the ranges
        var x = d3.scaleBand().rangeRound([0, width]).padding(0.5);
        var y = d3.scaleLinear().range([height, 0]);

        // define the axis
        var xAxis = d3.axisBottom(x);

        var yAxis = d3.axisLeft(y).ticks(10);


        // add the SVG element
        var svg = d3.select(".holderDiv").append("svg")
            .attr("width", width + margin.left + margin.right)
            .attr("height", height + margin.top + margin.bottom)
            .attr("text-align", "center")
            .append("g")
            .attr("transform",
            "translate(" + margin.left + "," + margin.top + ")");

        var data = <%=queryResult%>;

            data.forEach(function (d) {
                d.ProductName = d.ProductName;
                d.CommentCount = +d.CommentCount;
            });

            // scale the range of the data
            x.domain(data.map(function (d) { return d.ProductName; }));
            y.domain([0, d3.max(data, function (d) { return d.CommentCount; })]);

            // add axis
            svg.append("g")
                .attr("class", "x axis")
                .attr("transform", "translate(0," + height + ")")
                .call(xAxis)
                .selectAll("text")
                .style("text-anchor", "end")
                .attr("dx", "-.8em")
                .attr("dy", "-.55em")
                .attr("transform", "rotate(-90)");

            svg.append("g")
                .attr("class", "y axis")
                .call(yAxis)
                .append("text")
                .attr("transform", "rotate(-90)")
                .attr("y", 5)
                .attr("dy", ".71em")
                .style("text-anchor", "end")
                .text("Frequency");


            // Add bar chart
            svg.selectAll("bar")
                .data(data)
                .enter().append("rect")
                .attr("class", "bar")
                .attr("x", function (d) { return x(d.ProductName); })
                .attr("width", x.bandwidth())
                .attr("y", function (d) { return y(d.CommentCount); })
                .attr("height", function (d) { return height - y(d.CommentCount); });

    </script>

</asp:Content>
