(243562) SELECT 
	t243562.Id = t243561.Id
FROM [DctSetpointtype(243561)] as t243561 (spt)
		LEFT JOIN (
			[VWellTree(243564)] as t243564 (t2)
				INNER JOIN [DctOu(243566)] as t243566 (tp2) ON ({t243564.ShopId?}? = {t243566.Id})
				LEFT JOIN [UacUsersDatagroup(243569)] as t243569 (cudg) ON ({t243566.Id} = {t243569.DatagroupId} AND {t243569.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243574)] as t243574 (oudg) ON ({t243566.ParentId?}? = {t243574.DatagroupId} AND {t243574.UserId} = 150 AND {t243574.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243594)] as t243594 (d) ON ({t243564.WellId?}? = {t243594.WellId})
		)  ON ({t243594.SetpointtypeId} = {t243561.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243569.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t243574.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
