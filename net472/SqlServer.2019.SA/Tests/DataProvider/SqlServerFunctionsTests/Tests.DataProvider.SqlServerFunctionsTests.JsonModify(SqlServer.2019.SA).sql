BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	JSON_MODIFY(N'{ "test" : 1 }', N'$.test', N'2')

