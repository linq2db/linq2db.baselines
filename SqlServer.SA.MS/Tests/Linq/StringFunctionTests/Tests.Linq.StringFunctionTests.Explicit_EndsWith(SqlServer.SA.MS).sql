﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'Persecution'))) = Convert(VarBinary(8000), N'Persecution')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'persecution'))) = Convert(VarBinary(8000), N'persecution')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

