-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [SqlServerDecimalOverflowAutoRead] ([Value1], [Value2]) VALUES (1.2345678901234567890123456789, 1234567890123456789012.123456789)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	[SqlServerDecimalOverflowAutoRead] [t1]

-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [SqlServerMoneyAutoRead] ([MoneyValue], [SmallMoneyValue]) VALUES (123456.7891, 1234.5678)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[MoneyValue],
	[t1].[SmallMoneyValue]
FROM
	[SqlServerMoneyAutoRead] [t1]

