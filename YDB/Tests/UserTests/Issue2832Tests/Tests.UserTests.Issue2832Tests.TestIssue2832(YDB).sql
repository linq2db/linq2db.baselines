SELECT
	spt.Id as Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId as SetpointtypeId
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
							oudg.DatagroupId as DatagroupId,
							oudg.Inheritablepermission as Inheritablepermission
						FROM
							UacUsersDatagroup oudg
						WHERE
							oudg.UserId = 150 AND oudg.Inheritablepermission > 0
					) oudg_1 ON tp2.ParentId = oudg_1.DatagroupId
					INNER JOIN Deviation d ON t2.WellId = d.WellId
			WHERE
				UTILS.GREATESTNOTNULL3(CAST(cudg_1.Permission AS Decimal(22,9)), CAST(oudg_1.Inheritablepermission AS Decimal(22,9)), NULL) IS NOT NULL
		) t2_1 ON t2_1.SetpointtypeId = spt.Id

