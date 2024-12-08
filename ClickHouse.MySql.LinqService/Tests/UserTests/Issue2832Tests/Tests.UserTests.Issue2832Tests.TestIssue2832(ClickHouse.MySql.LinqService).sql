(168958) SELECT 
	t168958.Id = t168957.Id
FROM [DctSetpointtype(168957)] as t168957 (spt)
		LEFT JOIN (
			(168995) SELECT 
				t168995.SetpointtypeId        = t168990.SetpointtypeId,
				t168995.Permission            = t168965.Permission?,
				t168995.Inheritablepermission = t168970.Inheritablepermission?
			FROM [VWellTree(168960)] as t168960 (t2)
					INNER JOIN [DctOu(168962)] as t168962 (tp2) ON ({t168960.ShopId?}? = {t168962.Id})
					LEFT JOIN [UacUsersDatagroup(168965)] as t168965 (cudg) ON ({t168962.Id} = {t168965.DatagroupId} AND {t168965.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168970)] as t168970 (oudg) ON ({t168962.ParentId?}? = {t168970.DatagroupId} AND {t168970.UserId} = 150 AND {t168970.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168990)] as t168990 (d) ON ({t168960.WellId?}? = {t168990.WellId})
		) as t168995 (t1) ON ({t168995.SetpointtypeId?} = {t168957.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168995.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168995.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
