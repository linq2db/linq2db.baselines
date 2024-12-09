(318388) SELECT 
	t318388.Id = t318387.Id
FROM [DctSetpointtype(318387)] as t318387 (spt)
		LEFT JOIN (
			[VWellTree(318390)] as t318390 (t2)
				INNER JOIN [DctOu(318392)] as t318392 (tp2) ON ({t318390.ShopId?}? = {t318392.Id})
				LEFT JOIN [UacUsersDatagroup(318395)] as t318395 (cudg) ON ({t318392.Id} = {t318395.DatagroupId} AND {t318395.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318400)] as t318400 (oudg) ON ({t318392.ParentId?}? = {t318400.DatagroupId} AND {t318400.UserId} = 150 AND {t318400.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318420)] as t318420 (d) ON ({t318390.WellId?}? = {t318420.WellId})
		)  ON ({t318420.SetpointtypeId} = {t318387.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318395.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318400.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
