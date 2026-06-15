-- YDB Ydb

SELECT
	m_1.CategoryID as CategoryID,
	d.ProductID as ProductID,
	d.ProductName as ProductName,
	d.CategoryID as CategoryID_1,
	d.QuantityPerUnit as QuantityPerUnit
FROM
	Categories m_1
		INNER JOIN Products d ON m_1.CategoryID = d.CategoryID

-- YDB Ydb

SELECT
	t1.CategoryID as CategoryID,
	t1.CategoryName as CategoryName,
	t1.Description as Description
FROM
	Categories t1

