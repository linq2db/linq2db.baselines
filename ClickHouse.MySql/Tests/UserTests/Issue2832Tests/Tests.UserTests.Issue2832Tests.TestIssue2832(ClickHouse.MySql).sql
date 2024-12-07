(168094) SELECT 
	t168094.Id = t168093.Id
FROM [DctSetpointtype(168093)] as t168093 (spt)
		LEFT JOIN (
			(168131) SELECT 
				t168131.SetpointtypeId        = t168126.SetpointtypeId,
				t168131.Permission            = t168101.Permission?,
				t168131.Inheritablepermission = t168106.Inheritablepermission?
			FROM [VWellTree(168096)] as t168096 (t2)
					INNER JOIN [DctOu(168098)] as t168098 (tp2) ON ({t168096.ShopId?}? = {t168098.Id})
					LEFT JOIN [UacUsersDatagroup(168101)] as t168101 (cudg) ON ({t168098.Id} = {t168101.DatagroupId} AND {t168101.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168106)] as t168106 (oudg) ON ({t168098.ParentId?}? = {t168106.DatagroupId} AND {t168106.UserId} = 150 AND {t168106.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168126)] as t168126 (d) ON ({t168096.WellId?}? = {t168126.WellId})
		) as t168131 (t1) ON ({t168131.SetpointtypeId?} = {t168093.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168131.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168131.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
