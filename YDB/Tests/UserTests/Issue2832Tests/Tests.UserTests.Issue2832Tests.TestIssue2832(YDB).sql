SELECT
	spt.Id as Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId as SetpointtypeId,
				t2.ShopId as ShopId
			FROM
				(
					SELECT
						w.WellId as WellId,
						w.ShopId as ShopId
					FROM
						VWellTree w
					WHERE
						UTILS.GREATESTNOTNULL3(CAST(cudg_1.Permission AS Decimal(22,9)), CAST(oudg_1.Inheritablepermission AS Decimal(22,9)), NULL) IS NOT NULL
				) t2
					INNER JOIN Deviation d ON t2.WellId = d.WellId
		) t1 ON t1.SetpointtypeId = spt.Id
		LEFT JOIN DctOu tp2 ON t1.ShopId = tp2.Id
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
				t3.DatagroupId as DatagroupId,
				t3.Inheritablepermission as Inheritablepermission
			FROM
				(
					SELECT
						oudg.DatagroupId as DatagroupId,
						oudg.Inheritablepermission as Inheritablepermission
					FROM
						UacUsersDatagroup oudg
					WHERE
						oudg.UserId = 150
				) t3
			WHERE
				t3.Inheritablepermission > 0
		) oudg_1 ON tp2.ParentId = oudg_1.DatagroupId

