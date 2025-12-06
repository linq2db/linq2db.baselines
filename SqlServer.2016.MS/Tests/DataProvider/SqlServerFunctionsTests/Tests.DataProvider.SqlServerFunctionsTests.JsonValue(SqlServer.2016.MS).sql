-- SqlServer.2016.MS SqlServer.2016

SELECT
	JSON_VALUE(N'{ "test" : 1 }', N'$.test')

