(239268) SELECT 
	t239268.Id = t239267.Id
FROM [DctSetpointtype(239267)] as t239267 (spt)
		LEFT JOIN (
			[VWellTree(239270)] as t239270 (t2)
				INNER JOIN [DctOu(239272)] as t239272 (tp2) ON ({t239270.ShopId?}? = {t239272.Id})
				LEFT JOIN [UacUsersDatagroup(239275)] as t239275 (cudg) ON ({t239272.Id} = {t239275.DatagroupId} AND {t239275.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239280)] as t239280 (oudg) ON ({t239272.ParentId?}? = {t239280.DatagroupId} AND {t239280.UserId} = 150 AND {t239280.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239300)] as t239300 (d) ON ({t239270.WellId?}? = {t239300.WellId})
		)  ON ({t239300.SetpointtypeId} = {t239267.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239275.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239280.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
