%dw 2.0
output application/java
---
{
	fromAddress: vars.fromAddress default p("email.ops.fromAddress") as String,
	toAddress: vars.toAddress default p("email.ops.toAddress") as String,
	emailSubject: vars.emailSub default "No Subject" as String,
	emailBody:  "Hi " ++ (vars.supportTeam default "IT Ops Team") ++ "," ++ vars.emailBody default ""
}