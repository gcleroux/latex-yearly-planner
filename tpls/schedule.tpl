\myUnderline{Schedule\textcolor{white}{g}}\vskip-\myLenLineThicknessDefault
{{range $hour := .Day.Hours .Cfg.Layout.Numbers.DailyBottomHour .Cfg.Layout.Numbers.DailyTopHour -}}
\myScheduleLineHeightButLine%
{{if $.Cfg.AMPMTime -}}
\parbox{9mm}{\hfill\small {{- $hour.FormatHour $.Cfg.AMPMTime -}} }%
{{- else -}}
{\small {{- $hour.FormatHour $.Cfg.AMPMTime -}} }
{{- end}}
\myLineLightGray\vskip\myScheduleLenLineHeightButLine\myLineGray
{{- end}}
{{if $.Cfg.AddLastHalfHour}}\vskip\myScheduleLenLineHeightButLine\vbox to 0pt{\myLineLightGray}{{end}}
