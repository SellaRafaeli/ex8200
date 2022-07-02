#NOWCAST_PRO = 'nowcast_pro'

NOWCAST_PRO = 'NOWCAST_PRO'

def get_nowcast_pro_cast
	$casts.get(tags: NOWCAST_PRO)
end

def is_pro(user = cu)
	#return false
	#return true if !$prod
	user && user[:tags].to_a.any? {|tag| tag.to_s.downcase.include?('payment')}
end

def is_verified(user = cu)
	# return true
	user && user[:verified]
end