﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	(
		SELECT
			[c_1].[City_Name]
		FROM
			[Cities] [c_1]
		WHERE
			[c_1].[City_Code] = [cp].[City_Code]
	),
	[cp].[State],
	[cp].[Zip_Code],
	[cp].[Zip_Plus_4],
	[cd].[Effective_Date]
FROM
	[Contract_Distributor_Agent] [cda]
		INNER JOIN [Agent] [a] ON [cda].[Agent_Id] = [a].[Agent_Id]
		INNER JOIN [Distributor] [d] ON [cda].[Distributor_Id] = [d].[Distributor_Id]
		INNER JOIN [Distributor_Commercial_Propert] [dcp] ON [d].[Distributor_Id] = [dcp].[Distributor_Id]
		INNER JOIN [Commercial_Property] [cp] ON [dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]
		INNER JOIN [Contract_Dates] [cd] ON [cda].[Contract_Id] = [cd].[Contract_Id]
WHERE
	[cda].[Contract_Id] = 198827882 AND
	[cda].[Distributor_Type_Code] = N'CC' AND
	[cda].[Distributor_Agent_Type_Prefix] = N'OFFICE' AND
	[cda].[Represents_Type_Prefix] = N'REPRESENTS' AND
	[cd].[Type_Code] = N'ESTCOE' AND
	[d].[Type_Code] = N'RE' AND
	[dcp].[Distributor_Type_Code] = N'RE'

