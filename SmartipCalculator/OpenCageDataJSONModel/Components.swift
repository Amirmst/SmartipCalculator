/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Components : Codable {
	let iSO_3166_1_alpha_2 : String?
	let iSO_3166_1_alpha_3 : String?
	let type : String?
	let city : String?
	let city_district : String?
	let continent : String?
	let country : String?
	let country_code : String?
	let county : String?
	let house_number : String?
	let neighbourhood : String?
	let political_union : String?
	let postcode : String?
	let road : String?
	let state : String?
	let state_district : String?
	let suburb : String?

	enum CodingKeys: String, CodingKey {

		case iSO_3166_1_alpha_2 = "ISO_3166_1_alpha_2"
		case iSO_3166_1_alpha_3 = "ISO_3166_1_alpha_3"
		case type = "type"
		case city = "city"
		case city_district = "city_district"
		case continent = "continent"
		case country = "country"
		case country_code = "country_code"
		case county = "county"
		case house_number = "house_number"
		case neighbourhood = "neighbourhood"
		case political_union = "political_union"
		case postcode = "postcode"
		case road = "road"
		case state = "state"
		case state_district = "state_district"
		case suburb = "suburb"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		iSO_3166_1_alpha_2 = try values.decodeIfPresent(String.self, forKey: .iSO_3166_1_alpha_2)
		iSO_3166_1_alpha_3 = try values.decodeIfPresent(String.self, forKey: .iSO_3166_1_alpha_3)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		city_district = try values.decodeIfPresent(String.self, forKey: .city_district)
		continent = try values.decodeIfPresent(String.self, forKey: .continent)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		country_code = try values.decodeIfPresent(String.self, forKey: .country_code)
		county = try values.decodeIfPresent(String.self, forKey: .county)
		house_number = try values.decodeIfPresent(String.self, forKey: .house_number)
		neighbourhood = try values.decodeIfPresent(String.self, forKey: .neighbourhood)
		political_union = try values.decodeIfPresent(String.self, forKey: .political_union)
		postcode = try values.decodeIfPresent(String.self, forKey: .postcode)
		road = try values.decodeIfPresent(String.self, forKey: .road)
		state = try values.decodeIfPresent(String.self, forKey: .state)
		state_district = try values.decodeIfPresent(String.self, forKey: .state_district)
		suburb = try values.decodeIfPresent(String.self, forKey: .suburb)
	}

}