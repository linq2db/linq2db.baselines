(159451) SELECT 
	t159451.Id = t159450.Id
FROM [DctSetpointtype(159450)] as t159450 (spt)
		LEFT JOIN (
			[VWellTree(159453)] as t159453 (t2)
				INNER JOIN [DctOu(159455)] as t159455 (tp2) ON ({t159453.ShopId?}? = {t159455.Id})
				LEFT JOIN [UacUsersDatagroup(159458)] as t159458 (cudg) ON ({t159455.Id} = {t159458.DatagroupId} AND {t159458.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159463)] as t159463 (oudg) ON ({t159455.ParentId?}? = {t159463.DatagroupId} AND {t159463.UserId} = 150 AND {t159463.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159483)] as t159483 (d) ON ({t159453.WellId?}? = {t159483.WellId})
		)  ON ({t159483.SetpointtypeId} = {t159450.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159458.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159463.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
