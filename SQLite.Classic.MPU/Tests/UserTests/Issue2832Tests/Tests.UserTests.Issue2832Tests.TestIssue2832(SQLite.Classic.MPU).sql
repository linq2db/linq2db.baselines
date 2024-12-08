(428074) SELECT 
	t428074.Id = t428073.Id
FROM [DctSetpointtype(428073)] as t428073 (spt)
		LEFT JOIN (
			[VWellTree(428076)] as t428076 (t2)
				INNER JOIN [DctOu(428078)] as t428078 (tp2) ON ({t428076.ShopId?}? = {t428078.Id})
				LEFT JOIN [UacUsersDatagroup(428081)] as t428081 (cudg) ON ({t428078.Id} = {t428081.DatagroupId} AND {t428081.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428086)] as t428086 (oudg) ON ({t428078.ParentId?}? = {t428086.DatagroupId} AND {t428086.UserId} = 150 AND {t428086.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428106)] as t428106 (d) ON ({t428076.WellId?}? = {t428106.WellId})
		)  ON ({t428106.SetpointtypeId} = {t428073.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428081.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428086.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
