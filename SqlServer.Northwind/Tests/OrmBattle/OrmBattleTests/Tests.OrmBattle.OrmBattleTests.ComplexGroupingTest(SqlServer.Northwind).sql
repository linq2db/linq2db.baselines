BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[m_1].[Year_1],
	[m_1].[Month_1],
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
			[t2].[CustomerID],
			[t2].[Year_1],
			[d_3].[Month_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[CustomerID],
					[d_1].[Year_1]
				FROM
					(
						SELECT DISTINCT
							[c_1].[CustomerID]
						FROM
							[Customers] [c_1]
					) [t1]
						CROSS APPLY (
							SELECT
								[d].[Year_1]
							FROM
								(
									SELECT
										DatePart(year, [yg].[OrderDate]) as [Year_1]
									FROM
										[Orders] [yg]
									WHERE
										[t1].[CustomerID] = [yg].[CustomerID]
								) [d]
							GROUP BY
								[d].[Year_1]
						) [d_1]
			) [t2]
				CROSS APPLY (
					SELECT
						[d_2].[Month_2] as [Month_1]
					FROM
						(
							SELECT
								[mg].[Month_1],
								DatePart(month, [mg].[OrderDate]) as [Month_2]
							FROM
								(
									SELECT
										DatePart(year, [a_Orders].[OrderDate]) as [Year_1],
										DatePart(month, [a_Orders].[OrderDate]) as [Month_1],
										[a_Orders].[OrderDate]
									FROM
										[Orders] [a_Orders]
									WHERE
										[t2].[CustomerID] = [a_Orders].[CustomerID]
								) [mg]
							WHERE
								([t2].[Year_1] = [mg].[Year_1] OR [t2].[Year_1] IS NULL AND [mg].[Year_1] IS NULL)
						) [d_2]
					GROUP BY
						[d_2].[Month_1],
						[d_2].[Month_2]
				) [d_3]
	) [m_1]
		INNER JOIN [Orders] [d_4] ON [m_1].[CustomerID] = [d_4].[CustomerID] AND ([m_1].[Year_1] = DatePart(year, [d_4].[OrderDate]) OR [m_1].[Year_1] IS NULL AND DatePart(year, [d_4].[OrderDate]) IS NULL) AND ([m_1].[Month_1] = DatePart(month, [d_4].[OrderDate]) OR [m_1].[Month_1] IS NULL AND DatePart(month, [d_4].[OrderDate]) IS NULL)

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[m_1].[Year_1],
	[d_3].[Month_1],
	[d_3].[Month_2]
FROM
	(
		SELECT DISTINCT
			[t1].[CustomerID],
			[d_1].[Year_1]
		FROM
			(
				SELECT DISTINCT
					[c_1].[CustomerID]
				FROM
					[Customers] [c_1]
			) [t1]
				CROSS APPLY (
					SELECT
						[d].[Year_1]
					FROM
						(
							SELECT
								DatePart(year, [yg].[OrderDate]) as [Year_1]
							FROM
								[Orders] [yg]
							WHERE
								[t1].[CustomerID] = [yg].[CustomerID]
						) [d]
					GROUP BY
						[d].[Year_1]
				) [d_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d_2].[Month_1],
				[d_2].[Month_2]
			FROM
				(
					SELECT
						[mg].[Month_1],
						DatePart(month, [mg].[OrderDate]) as [Month_2]
					FROM
						(
							SELECT
								DatePart(year, [a_Orders].[OrderDate]) as [Year_1],
								DatePart(month, [a_Orders].[OrderDate]) as [Month_1],
								[a_Orders].[OrderDate]
							FROM
								[Orders] [a_Orders]
							WHERE
								[m_1].[CustomerID] = [a_Orders].[CustomerID]
						) [mg]
					WHERE
						([m_1].[Year_1] = [mg].[Year_1] OR [m_1].[Year_1] IS NULL AND [mg].[Year_1] IS NULL)
				) [d_2]
			GROUP BY
				[d_2].[Month_1],
				[d_2].[Month_2]
		) [d_3]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d_1].[Year_1]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT
				[d].[Year_1]
			FROM
				(
					SELECT
						DatePart(year, [yg].[OrderDate]) as [Year_1]
					FROM
						[Orders] [yg]
					WHERE
						[m_1].[CustomerID] = [yg].[CustomerID]
				) [d]
			GROUP BY
				[d].[Year_1]
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

