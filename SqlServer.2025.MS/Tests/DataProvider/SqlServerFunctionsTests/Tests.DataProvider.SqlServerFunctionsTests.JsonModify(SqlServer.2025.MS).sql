-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	JSON_MODIFY(N'{ "test" : 1 }', N'$.test', N'2')

