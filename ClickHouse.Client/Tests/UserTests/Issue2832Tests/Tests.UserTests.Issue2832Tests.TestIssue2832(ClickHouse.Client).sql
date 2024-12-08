(170500) SELECT 
	t170500.Id = t170499.Id
FROM [DctSetpointtype(170499)] as t170499 (spt)
		LEFT JOIN (
			(170537) SELECT 
				t170537.SetpointtypeId        = t170532.SetpointtypeId,
				t170537.Permission            = t170507.Permission?,
				t170537.Inheritablepermission = t170512.Inheritablepermission?
			FROM [VWellTree(170502)] as t170502 (t2)
					INNER JOIN [DctOu(170504)] as t170504 (tp2) ON ({t170502.ShopId?}? = {t170504.Id})
					LEFT JOIN [UacUsersDatagroup(170507)] as t170507 (cudg) ON ({t170504.Id} = {t170507.DatagroupId} AND {t170507.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170512)] as t170512 (oudg) ON ({t170504.ParentId?}? = {t170512.DatagroupId} AND {t170512.UserId} = 150 AND {t170512.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170532)] as t170532 (d) ON ({t170502.WellId?}? = {t170532.WellId})
		) as t170537 (t1) ON ({t170537.SetpointtypeId?} = {t170499.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170537.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170537.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
