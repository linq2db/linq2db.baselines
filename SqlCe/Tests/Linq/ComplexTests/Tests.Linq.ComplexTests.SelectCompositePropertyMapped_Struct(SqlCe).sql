-- SqlCe

SELECT DISTINCT TOP (2)
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[UserStruct] [u]

