-- SqlServer.Contained.MS SqlServer.2019

SELECT
	JSON_MODIFY(N'{ "test" : 1 }', N'$.test', N'2')

