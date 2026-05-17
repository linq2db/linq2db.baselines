-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%Paranoid%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'Paranoid'), Convert(VarBinary(8000), [r].[Diagnosis])) > 0

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%paranoid%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'paranoid'), Convert(VarBinary(8000), [r].[Diagnosis])) > 0

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%paranoid%' ESCAPE N'~'

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%paranoid%' ESCAPE N'~'

