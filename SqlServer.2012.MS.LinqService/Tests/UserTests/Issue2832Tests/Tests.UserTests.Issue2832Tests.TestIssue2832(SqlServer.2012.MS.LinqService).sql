(240691) SELECT 
	t240691.Id = t240690.Id
FROM [DctSetpointtype(240690)] as t240690 (spt)
		LEFT JOIN (
			[VWellTree(240693)] as t240693 (t2)
				INNER JOIN [DctOu(240695)] as t240695 (tp2) ON ({t240693.ShopId?}? = {t240695.Id})
				LEFT JOIN [UacUsersDatagroup(240698)] as t240698 (cudg) ON ({t240695.Id} = {t240698.DatagroupId} AND {t240698.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240703)] as t240703 (oudg) ON ({t240695.ParentId?}? = {t240703.DatagroupId} AND {t240703.UserId} = 150 AND {t240703.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240723)] as t240723 (d) ON ({t240693.WellId?}? = {t240723.WellId})
		)  ON ({t240723.SetpointtypeId} = {t240690.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240698.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240703.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
