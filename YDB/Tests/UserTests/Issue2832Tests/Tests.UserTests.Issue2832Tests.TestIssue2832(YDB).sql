SELECT
	spt.Id as Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId as SetpointtypeId,
				tp2.Id as Id
			FROM
				(
					SELECT
						w.ShopId as ShopId,
						w.WellId as WellId
					FROM
						VWellTree w
					WHERE
						oudg_1.Inheritablepermission > 0 AND UTILS.GREATESTNOTNULL3(CAST(cudg_1.Permission AS Decimal(22,9)), Unwrap(CAST(oudg_1.Inheritablepermission AS Decimal(22,9))), NULL) IS NOT NULL
				) t2
					INNER JOIN DctOu tp2 ON t2.ShopId = tp2.Id
					INNER JOIN (
						SELECT
							oudg.DatagroupId as DatagroupId,
							oudg.Inheritablepermission as Inheritablepermission
						FROM
							UacUsersDatagroup oudg
						WHERE
							oudg.UserId = 150
					) oudg_1 ON tp2.ParentId = oudg_1.DatagroupId
					INNER JOIN Deviation d ON t2.WellId = d.WellId
		) t1 ON t1.SetpointtypeId = spt.Id
		LEFT JOIN (
			SELECT
				cudg.DatagroupId as DatagroupId,
				cudg.Permission as Permission
			FROM
				UacUsersDatagroup cudg
			WHERE
				cudg.UserId = 150
		) cudg_1 ON t1.Id = cudg_1.DatagroupId

