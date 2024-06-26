﻿BeforeExecute
-- SqlCe

SELECT
	[t1].[PersonID] as [ID],
	[patient_1].[PersonID] as [c1]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [patient_1] ON [t1].[PersonID] = [patient_1].[PersonID]
ORDER BY
	[t1].[MiddleName]

