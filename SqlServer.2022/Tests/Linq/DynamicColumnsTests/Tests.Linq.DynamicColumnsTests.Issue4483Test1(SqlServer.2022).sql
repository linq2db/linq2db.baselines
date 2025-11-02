-- SqlServer.2022

SELECT
	[t1].[Id],
	JSON_VALUE(JsonData, '$."0"') AS '0',
	JSON_VALUE(JsonData, '$."1"') AS '1',
	JSON_VALUE(JsonData, '$."2"') AS '2',
	JSON_VALUE(JsonData, '$."3"') AS '3',
	JSON_VALUE(JsonData, '$."4"') AS '4'
FROM
	[TestJsonWrite] [t1]

