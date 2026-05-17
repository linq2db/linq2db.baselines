-- SqlServer.SA.MS SqlServer.2019

SELECT
	JSON_VALUE(N'{ "test" : 1 }', N'$.test')

