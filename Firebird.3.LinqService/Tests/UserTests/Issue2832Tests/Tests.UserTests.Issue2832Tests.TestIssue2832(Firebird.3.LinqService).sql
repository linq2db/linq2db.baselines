(159488) SELECT 
	t159488.Id = t159487.Id
FROM [DctSetpointtype(159487)] as t159487 (spt)
		LEFT JOIN (
			[VWellTree(159490)] as t159490 (t2)
				INNER JOIN [DctOu(159492)] as t159492 (tp2) ON ({t159490.ShopId?}? = {t159492.Id})
				LEFT JOIN [UacUsersDatagroup(159495)] as t159495 (cudg) ON ({t159492.Id} = {t159495.DatagroupId} AND {t159495.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159500)] as t159500 (oudg) ON ({t159492.ParentId?}? = {t159500.DatagroupId} AND {t159500.UserId} = 150 AND {t159500.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159520)] as t159520 (d) ON ({t159490.WellId?}? = {t159520.WellId})
		)  ON ({t159520.SetpointtypeId} = {t159487.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159495.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159500.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
