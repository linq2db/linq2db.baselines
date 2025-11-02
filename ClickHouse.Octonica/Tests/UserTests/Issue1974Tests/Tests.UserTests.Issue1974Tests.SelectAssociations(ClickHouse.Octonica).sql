-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Name,
	a_Bought.PersonId,
	a_Bought.ID,
	a_Bought.Price,
	a_BoughtQuery.PersonId,
	a_BoughtQuery.ID,
	a_BoughtQuery.Price
FROM
	Person1974 t1
		LEFT JOIN Article a_Bought ON t1.ID = a_Bought.PersonId
		LEFT JOIN Article a_BoughtQuery ON a_BoughtQuery.PersonId = t1.ID

