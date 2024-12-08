(246059) SELECT 
	t246059.Id = t246058.Id
FROM [DctSetpointtype(246058)] as t246058 (spt)
		LEFT JOIN (
			[VWellTree(246061)] as t246061 (t2)
				INNER JOIN [DctOu(246063)] as t246063 (tp2) ON ({t246061.ShopId?}? = {t246063.Id})
				LEFT JOIN [UacUsersDatagroup(246066)] as t246066 (cudg) ON ({t246063.Id} = {t246066.DatagroupId} AND {t246066.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246071)] as t246071 (oudg) ON ({t246063.ParentId?}? = {t246071.DatagroupId} AND {t246071.UserId} = 150 AND {t246071.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246091)] as t246091 (d) ON ({t246061.WellId?}? = {t246091.WellId})
		)  ON ({t246091.SetpointtypeId} = {t246058.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246066.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t246071.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
