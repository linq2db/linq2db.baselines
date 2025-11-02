-- SqlServer.2016.MS SqlServer.2016

SELECT
	JSON_MODIFY(N'{ "test" : 1 }', N'$.test', N'2')

