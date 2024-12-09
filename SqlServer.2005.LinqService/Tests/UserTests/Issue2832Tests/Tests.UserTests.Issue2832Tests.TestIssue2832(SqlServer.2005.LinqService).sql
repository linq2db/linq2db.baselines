(219263) SELECT 
	t219263.Id = t219262.Id
FROM [DctSetpointtype(219262)] as t219262 (spt)
		LEFT JOIN (
			[VWellTree(219265)] as t219265 (t2)
				INNER JOIN [DctOu(219267)] as t219267 (tp2) ON ({t219265.ShopId?}? = {t219267.Id})
				LEFT JOIN [UacUsersDatagroup(219270)] as t219270 (cudg) ON ({t219267.Id} = {t219270.DatagroupId} AND {t219270.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(219275)] as t219275 (oudg) ON ({t219267.ParentId?}? = {t219275.DatagroupId} AND {t219275.UserId} = 150 AND {t219275.Inheritablepermission} > 0)
				INNER JOIN [Deviation(219295)] as t219295 (d) ON ({t219265.WellId?}? = {t219295.WellId})
		)  ON ({t219295.SetpointtypeId} = {t219262.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t219270.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t219275.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
