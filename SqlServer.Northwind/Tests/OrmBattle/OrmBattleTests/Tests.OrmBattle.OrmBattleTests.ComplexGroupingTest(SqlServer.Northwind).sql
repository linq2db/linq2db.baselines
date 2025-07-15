BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[cond],
	[m_1].[Key_1],
	[m_1].[Key_2],
	[d_4].[OrderID],
	[d_4].[CustomerID],
	[d_4].[EmployeeID],
	[d_4].[OrderDate],
	[d_4].[RequiredDate],
	[d_4].[ShippedDate],
	[d_4].[ShipVia],
	[d_4].[Freight],
	[d_4].[ShipName],
	[d_4].[ShipAddress],
	[d_4].[ShipCity],
	[d_4].[ShipRegion],
	[d_4].[ShipPostalCode],
	[d_4].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[t2].[cond],
			[t2].[Key_1],
			[d_3].[Key_1] as [Key_2]
		FROM
			(
				SELECT DISTINCT
					[d_1].[cond],
					[d_1].[Key_1]
				FROM
					(
						SELECT DISTINCT
							[c_1].[CustomerID] as [cond]
						FROM
							[Customers] [c_1]
					) [t1]
						CROSS APPLY (
							SELECT
								[d].[Key_1],
								[t1].[cond]
							FROM
								(
									SELECT
										DatePart(year, [yg].[OrderDate]) as [Key_1]
									FROM
										[Orders] [yg]
									WHERE
										[t1].[cond] = [yg].[CustomerID]
								) [d]
							GROUP BY
								[d].[Key_1]
						) [d_1]
			) [t2]
				CROSS APPLY (
					SELECT
						[d_2].[Key_1]
					FROM
						(
							SELECT
								DatePart(month, [mg].[OrderDate]) as [Key_1]
							FROM
								[Orders] [mg]
							WHERE
								[t2].[cond] = [mg].[CustomerID] AND ([t2].[Key_1] = DatePart(year, [mg].[OrderDate]) OR [t2].[Key_1] IS NULL AND [mg].[OrderDate] IS NULL)
						) [d_2]
					GROUP BY
						[d_2].[Key_1]
				) [d_3]
	) [m_1]
		INNER JOIN [Orders] [d_4] ON [m_1].[cond] = [d_4].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [d_4].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d_4].[OrderDate] IS NULL) AND ([m_1].[Key_2] = DatePart(month, [d_4].[OrderDate]) OR [m_1].[Key_2] IS NULL AND [d_4].[OrderDate] IS NULL)

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[cond],
	[m_1].[Key_1],
	[d_3].[Key_1],
	[d_3].[Key_1]
FROM
	(
		SELECT DISTINCT
			[d_1].[cond],
			[d_1].[Key_1]
		FROM
			(
				SELECT DISTINCT
					[c_1].[CustomerID] as [cond]
				FROM
					[Customers] [c_1]
			) [t1]
				CROSS APPLY (
					SELECT
						[d].[Key_1],
						[t1].[cond]
					FROM
						(
							SELECT
								DatePart(year, [yg].[OrderDate]) as [Key_1]
							FROM
								[Orders] [yg]
							WHERE
								[t1].[cond] = [yg].[CustomerID]
						) [d]
					GROUP BY
						[d].[Key_1]
				) [d_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d_2].[Key_1]
			FROM
				(
					SELECT
						DatePart(month, [mg].[OrderDate]) as [Key_1]
					FROM
						[Orders] [mg]
					WHERE
						[m_1].[cond] = [mg].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [mg].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [mg].[OrderDate] IS NULL)
				) [d_2]
			GROUP BY
				[d_2].[Key_1]
		) [d_3]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d_1].[Key_1]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT
				[d].[Key_1]
			FROM
				(
					SELECT
						DatePart(year, [yg].[OrderDate]) as [Key_1]
					FROM
						[Orders] [yg]
					WHERE
						[m_1].[CustomerID] = [yg].[CustomerID]
				) [d]
			GROUP BY
				[d].[Key_1]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

