-- YDB Ydb

SELECT
	x.`Type` as Type_1,
	x.OwnerId as OwnerId,
	a_Owner.Id as Id,
	a_Owner.Name as Name
FROM
	Item x
		LEFT JOIN Owner a_Owner ON x.OwnerId = a_Owner.Id

