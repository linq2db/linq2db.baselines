(168578) SELECT 
	t168578.Id = t168577.Id
FROM [DctSetpointtype(168577)] as t168577 (spt)
		LEFT JOIN (
			(168615) SELECT 
				t168615.SetpointtypeId        = t168610.SetpointtypeId,
				t168615.Permission            = t168585.Permission?,
				t168615.Inheritablepermission = t168590.Inheritablepermission?
			FROM [VWellTree(168580)] as t168580 (t2)
					INNER JOIN [DctOu(168582)] as t168582 (tp2) ON ({t168580.ShopId?}? = {t168582.Id})
					LEFT JOIN [UacUsersDatagroup(168585)] as t168585 (cudg) ON ({t168582.Id} = {t168585.DatagroupId} AND {t168585.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168590)] as t168590 (oudg) ON ({t168582.ParentId?}? = {t168590.DatagroupId} AND {t168590.UserId} = 150 AND {t168590.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168610)] as t168610 (d) ON ({t168580.WellId?}? = {t168610.WellId})
		) as t168615 (t1) ON ({t168615.SetpointtypeId?} = {t168577.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168615.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168615.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
