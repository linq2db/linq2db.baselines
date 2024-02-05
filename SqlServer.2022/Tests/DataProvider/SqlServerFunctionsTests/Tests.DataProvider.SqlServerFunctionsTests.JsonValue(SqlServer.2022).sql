BeforeExecute
-- SqlServer.2022

SELECT
	JSON_VALUE(N'{ "test" : 1 }', N'$.test')

