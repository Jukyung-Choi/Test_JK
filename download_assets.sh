#!/bin/bash
# Download Figma assets and replace URLs in HTML files
# OLD_UUID → NEW_UUID mapping

BASE="https://www.figma.com/api/mcp/asset"
ASSETS="assets"
mkdir -p "$ASSETS"

download() {
  local OLD="$1"
  local NEW="$2"
  local OUT="$ASSETS/$OLD.png"
  echo "Downloading $OLD ..."
  curl -s -L -o "$OUT" "$BASE/$NEW"
  local SIZE=$(wc -c < "$OUT")
  if [ "$SIZE" -lt 100 ]; then
    echo "  WARN: $OLD may have failed (${SIZE} bytes)"
  else
    echo "  OK: ${SIZE} bytes"
  fi
}

# ─── Screen 1 ───────────────────────────────────────────
download "644c55a2-a6dc-4d3c-8d9b-7f5ed1338db7" "fa7e7103-8f46-4527-8034-4ff5dd461d78"
download "42518be2-aa93-4cc0-8052-06619cfe5a08" "1fd76ced-b1a0-43cf-850e-d1d63ffc9bbd"
download "3aa5f478-6551-4719-a2bd-5e0efa3ee445" "0ae6d88a-37d1-4f0c-a828-88f6d39f4363"
download "b8a38416-704d-4ec9-add8-645a389c5b99" "8b646cc3-5d17-4724-a3ec-586f7b0028e3"
download "2d9e52a1-c5f1-463e-a88c-2d1a2ca18643" "d1d39534-7766-41ed-93c2-3d29d3331a45"
download "d811bfd2-9bb6-4f36-b1a4-bbac159f6f63" "15b157ca-1c27-4c31-9191-388c6ed35941"
download "03fdcaa0-2d9b-45c1-b3cc-a6ff3fc96c38" "0a3882f6-b1d1-4714-ade6-09c249019cb3"
download "d6ce1ef0-dc2e-4589-bb37-723527a39e27" "3da32465-b901-4e13-891f-5697d2abd1b8"
download "5a1722e1-dec9-41ae-a8a7-b430e7ef5656" "b2621cb0-0efc-4a22-b28a-e41adf84f56c"
download "fa0bf6cd-ceb4-4cb9-8b3b-ef2d30496c78" "5a637aa4-499d-4b42-8651-148450480002"
download "d05bf9a5-edd1-463a-9458-af92d88efc84" "39743636-964f-4b28-ba3b-80fe2e8c62c0"

# ─── Screen 2 ───────────────────────────────────────────
download "b7fc4ed5-6dfc-4c8d-bd8c-71dfcdeca057" "5181a683-243c-4a58-976f-cafed4f1d596"
download "fb498401-8fc6-4d03-85b0-da1ba6c4b002" "4696e737-ee1e-4f81-b58b-9f8f3d114826"
download "2d51a280-5bab-4e1e-a7a6-96ac888098bb" "289ed691-27e7-4364-bfe1-bf13a8ef2b04"
download "ee025615-a1f2-4268-96cf-7d18a1ef0605" "c9f0bb6c-94ea-49ac-8ba4-eb6e3f205714"
download "b5903439-ac7e-40ac-a9b9-161c5805f2da" "23ce268d-9b70-4a32-bd1c-2e26c3c477d1"
download "80e06d27-a17f-49d5-a619-33a5922a15f5" "90c12677-8d72-4cc8-a391-a75d9f03fde0"
download "f30e5188-c919-4c90-b64d-9136c6bd16b7" "24a8201f-a279-46ca-90a5-60c67a842e8f"
download "51173679-d521-4767-88f9-da5a76148981" "2452aa80-ad41-420b-8ebc-bae54e1ff5c6"
download "9738fc36-4315-4b75-bfed-2e55a0d828c7" "7f043e70-674c-46d4-8f72-54eed5b74d33"
download "0ab2cd6b-ce91-42d5-93af-3ec8c7de4f94" "0b92dda4-bfc2-40d2-92f8-524845dc2f9d"
download "a2c48974-fbd2-4c79-a41b-abf62cf7de08" "36a0d94d-1161-4ef4-aa1d-a3ab6565add4"
download "ee084c00-6e23-4b13-8042-f32c2084b7e7" "1af45fe6-adc7-4506-9d39-a8d87c31b6a7"

# ─── Screen 3 ───────────────────────────────────────────
download "3b54a40d-79c5-4e34-a171-fa71532a4511" "021f6b51-1306-4a6c-8a96-92d1f36f6c7b"
download "c38cdfc8-fc3a-435b-bfea-43a414a87a18" "17afa899-42dd-4446-8297-cb942baaed7d"
download "43575443-0b38-433a-83b6-38053906dd34" "5e1593a7-22bb-4351-947c-b4001c252908"
download "6ed41b1c-7324-4a2b-8619-c348cf769e14" "eaf1efd2-9647-4a61-a827-faf7ab32d047"

# ─── Screen 4 ───────────────────────────────────────────
download "916770ea-5d47-4b67-a5aa-2034e5cf0bd0" "205018c0-3224-43df-8f0f-f9fe5aa92a47"
download "c3a7d4d1-362d-45e5-845a-582d02f714e0" "52348a08-3dbe-45d3-8d82-dd75b61429fe"
download "a5d62d86-7c14-4a42-9643-98415015cfdc" "745389dd-e5b4-4c12-b756-9fc5835d72bd"
download "eb4e3b42-c6eb-4790-9d2f-d3fd9d75be43" "d7e42da0-05a3-4964-9a6d-5b598ebb1712"
download "59a9cf2f-d1a0-45e3-beea-b338b3966bf8" "d2cf18e2-60b9-4c12-82d6-fac132f577af"
download "98c3ea40-30f1-4910-b2e2-ccdf819c770f" "d4734407-88ed-4e21-bb96-fea33b2abe8a"
download "2aad7bf8-3ce4-4e12-b4de-f36c6eb0ed73" "4520d09d-174b-45d4-99b0-203c748ae777"
# 80a32fa3 (toast checkmark) - node deleted in Figma, skip

# ─── Screen 5 ───────────────────────────────────────────
download "2b2e289e-ace9-4917-8f2d-0e08e604ad8b" "d52b67f0-a56b-47fd-8722-43edcad8f5c4"
download "3dc58a50-1921-4931-bf8e-ab556732fa05" "a915be22-bac3-47e3-a9a7-6bf5fd3b4c70"
download "767147a7-a7c6-4228-8bfb-0a66c45f2cd3" "7ad230f4-34dc-4096-b529-7613f0f4e3a6"
download "46659698-fb41-413b-937b-bb6b575beddb" "38b74408-d154-4314-a589-ffa202275cb5"
download "ccba7242-2fb4-4535-b5d0-f04ce331f565" "aea6a9d0-5a45-4dc5-9e68-d598296638d1"
download "393c0bc7-56d9-48b8-8c75-bfd6e10644bc" "8b3954d6-6e90-4064-b35e-c3dd80de52a7"
download "fe869259-c847-4194-ba5c-62c94b62fc3c" "14d81dc1-5365-41ab-99b8-8648b45f1640"

# ─── case2 Screen 2 unique ──────────────────────────────
download "292ebbd9-439d-489e-b7b2-593aff6230e6" "0eb1f439-78d9-4e2e-8cba-aadbfef5b5fe"
download "6819d1d5-d36c-4ae4-ac4d-4a29cbd1a61f" "97f9c9cd-c01c-4c2b-8b25-21806a415257"
download "7fd9a28b-8d22-495b-b146-aeb18185256d" "e17207f4-38f2-4c7c-bafb-23e4d776a284"
download "f921fc5b-bfd4-435c-b135-4cecd10c3715" "715a1023-fce5-49cc-bfa9-569066c2918a"
download "07eeadd9-6ad8-4a7b-9d31-7f253c9d8ff5" "0563006b-6f4d-46ab-a61a-33256e9751b2"
download "b84141de-2e31-4f5b-89b8-3409211ffd17" "fde5f425-a4ec-48ee-8424-9daf36c73ce8"
download "44872742-f63b-4c8c-9f5d-6939c32a29a0" "27b71196-08e7-4add-84de-abd8b4b604f4"
download "6657c418-fbb1-4828-b12b-7244ae43f5e3" "98cfaa66-e5d1-412c-92bb-2d9f67a421df"
download "7374d835-82b3-4236-814a-cca92cdab64f" "2a506022-a4a7-4ff3-89d2-cedcc645559f"
download "f4d5d87f-a649-4ba9-9a78-4f6a08e54013" "f5887832-ce30-4c94-9625-409c9f65afa0"
download "d9bfffdd-e2f5-468a-8522-6335c5b66ba9" "346a2509-abbf-469e-87e5-9d05cfbff0d3"
download "e33ad893-30f1-42e4-8858-d876dc94af95" "8471f1e0-dc7d-434f-90d9-e2145cd29cc0"
download "e14ffecd-f0f0-4963-ae5a-22770b15cd45" "2ad687f7-70a8-4924-b593-3cc78ad6c8ca"
download "77f95b64-fa82-4b46-888e-159a8cc2b1c1" "0ccc7998-d8a5-4429-8f36-881dd7035a5c"

echo ""
echo "=== Download complete ==="
echo "Files in assets/:"
ls assets/*.png 2>/dev/null | wc -l
echo "files"
