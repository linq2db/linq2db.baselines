-- YDB Ydb
SELECT
	a_Client2.Name as Name
FROM
	ExpressionAssociationService s
		INNER JOIN ExpressionAssociationClient a_Client2 ON a_Client2.Id = s.IdClient

