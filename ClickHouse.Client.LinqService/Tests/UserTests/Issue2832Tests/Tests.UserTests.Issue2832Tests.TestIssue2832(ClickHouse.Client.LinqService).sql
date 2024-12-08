(170523) SELECT 
	t170523.Id = t170522.Id
FROM [DctSetpointtype(170522)] as t170522 (spt)
		LEFT JOIN (
			(170560) SELECT 
				t170560.SetpointtypeId        = t170555.SetpointtypeId,
				t170560.Permission            = t170530.Permission?,
				t170560.Inheritablepermission = t170535.Inheritablepermission?
			FROM [VWellTree(170525)] as t170525 (t2)
					INNER JOIN [DctOu(170527)] as t170527 (tp2) ON ({t170525.ShopId?}? = {t170527.Id})
					LEFT JOIN [UacUsersDatagroup(170530)] as t170530 (cudg) ON ({t170527.Id} = {t170530.DatagroupId} AND {t170530.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170535)] as t170535 (oudg) ON ({t170527.ParentId?}? = {t170535.DatagroupId} AND {t170535.UserId} = 150 AND {t170535.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170555)] as t170555 (d) ON ({t170525.WellId?}? = {t170555.WellId})
		) as t170560 (t1) ON ({t170560.SetpointtypeId?} = {t170522.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170560.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170560.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
