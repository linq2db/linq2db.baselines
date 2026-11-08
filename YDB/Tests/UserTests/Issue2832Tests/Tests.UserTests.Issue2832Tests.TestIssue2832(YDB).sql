SELECT
	spt.Id as Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId as SetpointtypeId,
				cudg_1.Permission as Permission,
				oudg_1.Inheritablepermission as Inheritablepermission
			FROM
				VWellTree t2
					INNER JOIN DctOu tp2 ON t2.ShopId = tp2.Id
					LEFT JOIN (
						SELECT
							cudg.DatagroupId as DatagroupId,
							cudg.Permission as Permission
						FROM
							UacUsersDatagroup cudg
						WHERE
							cudg.UserId = 150
					) cudg_1 ON tp2.Id = cudg_1.DatagroupId
					LEFT JOIN (
						SELECT
							t1.DatagroupId as DatagroupId,
							t1.Inheritablepermission as Inheritablepermission
						FROM
							(
								SELECT
									oudg.DatagroupId as DatagroupId,
									oudg.Inheritablepermission as Inheritablepermission
								FROM
									UacUsersDatagroup oudg
								WHERE
									oudg.UserId = 150
							) t1
						WHERE
							t1.Inheritablepermission > 0
					) oudg_1 ON tp2.ParentId = oudg_1.DatagroupId
					INNER JOIN Deviation d ON t2.WellId = d.WellId
		) t3 ON t3.SetpointtypeId = spt.Id AND UTILS.GREATESTNOTNULL3(CAST(t3.Permission AS Decimal(22,9)), CAST(t3.Inheritablepermission AS Decimal(22,9)), NULL) IS NOT NULL

