-- SqlServer.2022.MS SqlServer.2022

SELECT
	JSON_MODIFY(N'{ "test" : 1 }', N'$.test', N'2')

