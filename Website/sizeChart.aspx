<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sizeChart.aspx.cs" Inherits="sizeChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            border-collapse: collapse;
        }
        .dtd{
            border-right: 1px solid black;
            background-color:#ffeddb;
        }
        .dth{
            border-bottom:1px solid black;
        }
        td{
            text-align:center;
        }
        tr:nth-child(even) {
  background-color:#ffdab3;
}
    </style>
</head>
<body style="background-color: #ffeddb">
<center>
    <h1>Size Chart</h1>
    <h5>Inch</h5>
    <table>
        <tr>
            <th style="width:100px" class="dth">Size</th>
            <th style="width:50px" class="dth">0</th>
            <th style="width:50px" class="dth">2</th>
            <th style="width:50px" class="dth">4</th>
            <th style="width:50px" class="dth">6</th>
            <th style="width:50px" class="dth">8</th>
            <th style="width:50px" class="dth">10</th>
            <th style="width:50px" class="dth">12</th>
            <th style="width:50px" class="dth">14</th>
            <th style="width:50px" class="dth">16</th>
            <th style="width:50px" class="dth">18</th>
        </tr>
        <tr>
            <th class="dtd">Bust</th>
            <td>31</td>
            <td>32</td>
            <td>33</td>
            <td>34.3</td>
            <td>35.5</td>
            <td>36</td>
            <td>37.5</td>
            <td>39</td>
            <td>41</td>
            <td>43</td>
        </tr>
        <tr>
            <th class="dtd">Under Bust</th>
            <td>26.8</td>
            <td>27.8</td>
            <td>28.8</td>
            <td>29</td>
            <td>31</td>
            <td>31.5</td>
            <td>33.5</td>
            <td>34.5</td>
            <td>36.5</td>
            <td>38</td>
        </tr>
        <tr>
            <th class="dtd">Waist</th>
            <td>23</td>
            <td>24.5</td>
            <td>25.5</td>
            <td>26.5</td>
            <td>27.5</td>
            <td>28.5</td>
            <td>29.5</td>
            <td>31</td>
            <td>32.5</td>
            <td>35</td>
        </tr>
        <tr>
            <th class="dtd">Hips</th>
            <td>33.5</td>
            <td>34.5</td>
            <td>35</td>
            <td>36</td>
            <td>37</td>
            <td>38</td>
            <td>39.5</td>
            <td>40.5</td>
            <td>42</td>
            <td>45</td>
        </tr>
    </table>
 <h5>Inch</h5>
    <table>
        <tr>
            <th style="width:100px" class="dth">Size</th>
            <th style="width:50px" class="dth">0</th>
            <th style="width:50px" class="dth">2</th>
            <th style="width:50px" class="dth">4</th>
            <th style="width:50px" class="dth">6</th>
            <th style="width:50px" class="dth">8</th>
            <th style="width:50px" class="dth">10</th>
            <th style="width:50px" class="dth">12</th>
            <th style="width:50px" class="dth">14</th>
            <th style="width:50px" class="dth">16</th>
            <th style="width:50px" class="dth">18</th>
        </tr>
        <tr>
            <th class="dtd">Bust</th>
            <td>78</td>
            <td>81</td>
            <td>84</td>
            <td>86</td>
            <td>90</td>
            <td>92</td>
            <td>95</td>
            <td>99</td>
            <td>104</td>
            <td>108.5</td>
        </tr>
        <tr>
            <th class="dtd">Under Bust</th>
            <td>68</td>
            <td>70.5</td>
            <td>73</td>
            <td>74</td>
            <td>78</td>
            <td>80</td>
            <td>85</td>
            <td>88</td>
            <td>92.5</td>
            <td>97</td>
        </tr>
        <tr>
            <th class="dtd">Waist</th>
            <td>58</td>
            <td>62</td>
            <td>65</td>
            <td>67</td>
            <td>70</td>
            <td>72</td>
            <td>75</td>
            <td>78</td>
            <td>83</td>
            <td>89</td>
        </tr>
        <tr>
            <th class="dtd">Hips</th>
            <td>85</td>
            <td>87.5</td>
            <td>89</td>
            <td>91</td>
            <td>93.5</td>
            <td>96</td>
            <td>100</td>
            <td>103</td>
            <td>107</td>
            <td>114</td>
        </tr>
    </table>
</center>
</body>
</html>
