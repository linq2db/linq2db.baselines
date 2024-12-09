(170556) SELECT 
	t170556.Id = t170555.Id
FROM [DctSetpointtype(170555)] as t170555 (spt)
		LEFT JOIN (
			(170593) SELECT 
				t170593.SetpointtypeId        = t170588.SetpointtypeId,
				t170593.Permission            = t170563.Permission?,
				t170593.Inheritablepermission = t170568.Inheritablepermission?
			FROM [VWellTree(170558)] as t170558 (t2)
					INNER JOIN [DctOu(170560)] as t170560 (tp2) ON ({t170558.ShopId?}? = {t170560.Id})
					LEFT JOIN [UacUsersDatagroup(170563)] as t170563 (cudg) ON ({t170560.Id} = {t170563.DatagroupId} AND {t170563.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170568)] as t170568 (oudg) ON ({t170560.ParentId?}? = {t170568.DatagroupId} AND {t170568.UserId} = 150 AND {t170568.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170588)] as t170588 (d) ON ({t170558.WellId?}? = {t170588.WellId})
		) as t170593 (t1) ON ({t170593.SetpointtypeId?} = {t170555.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170593.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170593.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
