(159449) SELECT 
	t159449.Id = t159448.Id
FROM [DctSetpointtype(159448)] as t159448 (spt)
		LEFT JOIN (
			[VWellTree(159451)] as t159451 (t2)
				INNER JOIN [DctOu(159453)] as t159453 (tp2) ON ({t159451.ShopId?}? = {t159453.Id})
				LEFT JOIN [UacUsersDatagroup(159456)] as t159456 (cudg) ON ({t159453.Id} = {t159456.DatagroupId} AND {t159456.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159461)] as t159461 (oudg) ON ({t159453.ParentId?}? = {t159461.DatagroupId} AND {t159461.UserId} = 150 AND {t159461.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159481)] as t159481 (d) ON ({t159451.WellId?}? = {t159481.WellId})
		)  ON ({t159481.SetpointtypeId} = {t159448.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159456.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159461.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
