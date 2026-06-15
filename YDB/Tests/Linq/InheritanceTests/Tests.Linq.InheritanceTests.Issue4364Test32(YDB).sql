-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 102
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 101

SELECT
	b.`Type` as Type_1,
	p.FullName as FullName
FROM
	Issue4364_BaseThing b
		INNER JOIN Issue4364_Interaction i ON b.Id = i.ThingId
		INNER JOIN Issue4364_Person p ON i.PersonId = p.Id
WHERE
	b.`Type` IN ($Ids0_1, $Ids0_2)
ORDER BY
	b.Id

