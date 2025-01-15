SELECT
	spt.Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId as SetpointtypeId,
				cudg.Permission as Permission,
				oudg.Inheritablepermission as Inheritablepermission
			FROM
				VWellTree t2
					INNER JOIN DctOu tp2 ON t2.ShopId = tp2.Id
					LEFT JOIN UacUsersDatagroup cudg ON tp2.Id = cudg.DatagroupId AND cudg.UserId = 150
					LEFT JOIN UacUsersDatagroup oudg ON tp2.ParentId = oudg.DatagroupId AND oudg.UserId = 150 AND oudg.Inheritablepermission > 0
					INNER JOIN Deviation d ON t2.WellId = d.WellId
		) t1 ON t1.SetpointtypeId = spt.Id AND UTILS.GREATESTNOTNULL3(toDecimal128(t1.Permission, 10), toDecimal128(t1.Inheritablepermission, 10), NULL) IS NOT NULL

