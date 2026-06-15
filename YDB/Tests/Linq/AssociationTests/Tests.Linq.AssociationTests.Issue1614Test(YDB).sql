-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.AssociatedObjectId as AssociatedObjectId,
	t1.AssociationTypeId as AssociationTypeId,
	a_User.Id as Id_1
FROM
	`Resource` t1
		LEFT JOIN Lookup a_AssociationTypeCode ON t1.AssociationTypeId = a_AssociationTypeCode.Id
		LEFT JOIN `User` a_User ON a_User.Id = t1.AssociatedObjectId
WHERE
	a_AssociationTypeCode.`Type` = 'us'u

