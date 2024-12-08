(168611) SELECT 
	t168611.Id = t168610.Id
FROM [DctSetpointtype(168610)] as t168610 (spt)
		LEFT JOIN (
			(168648) SELECT 
				t168648.SetpointtypeId        = t168643.SetpointtypeId,
				t168648.Permission            = t168618.Permission?,
				t168648.Inheritablepermission = t168623.Inheritablepermission?
			FROM [VWellTree(168613)] as t168613 (t2)
					INNER JOIN [DctOu(168615)] as t168615 (tp2) ON ({t168613.ShopId?}? = {t168615.Id})
					LEFT JOIN [UacUsersDatagroup(168618)] as t168618 (cudg) ON ({t168615.Id} = {t168618.DatagroupId} AND {t168618.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168623)] as t168623 (oudg) ON ({t168615.ParentId?}? = {t168623.DatagroupId} AND {t168623.UserId} = 150 AND {t168623.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168643)] as t168643 (d) ON ({t168613.WellId?}? = {t168643.WellId})
		) as t168648 (t1) ON ({t168648.SetpointtypeId?} = {t168610.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168648.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168648.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
