﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'Persecution'))) = Convert(VarBinary(8000), N'Persecution')

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'persecution'))) = Convert(VarBinary(8000), N'persecution')

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

