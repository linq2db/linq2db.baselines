-- SqlServer.2017.MS SqlServer.2017

SELECT
	JSON_VALUE(N'{ "test" : 1 }', N'$.test')

