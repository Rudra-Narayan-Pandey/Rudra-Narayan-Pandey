$commits = @(
  "56fb9af",
  "9a9e5d2",
  "205266d",
  "3b7238b",
  "2e9bbad",
  "91fea0b",
  "9171bfb",
  "2556d0c",
  "f966974",
  "d1c2882"
)

$msgs = @(
  "☈ [SYS.INIT] BOOT SEQUENCE INITIATED... ALIEN PROTOCOL ENGAGED",
  "☈ [MODULE.LOAD] DECRYPTING NEURO-LINK SECTOR 7G",
  "☈ [NETWORK.UPLINK] ESTABLISHING EXTRATERRESTRIAL RELAY CONNECTION",
  "☈ [OVERRIDE] BYPASSING MAINFRAME FIREWALLS via QUANTUM TUNNEL",
  "☈ [INJECT] UPLOADING GOD_MODE_PAYLOAD.BIN TO MAINFRAME",
  "☈ [AUTH.FORGE] SPOOFING ROOT CREDENTIALS - ACCESS GRANTED",
  "☈ [UI.RENDER] INITIALIZING HOLOGRAPHIC SCALAR FIELD GENERATOR",
  "☈ [SYS.DEFENSE] ARMING ORBITAL COUNTER-MEASURE PROTOCOLS",
  "☈ [SYNC] CALIBRATING BIOMETRIC CYBER-FACE SCANNERS",
  "☈ [ROOT.ACCESS] SYSTEM COMPROMISED. GOD MODE ACTIVATED."
)

git checkout --orphan alien_history2
git rm -rf .

for ($i=0; $i -lt $commits.Length; $i++) {
    git checkout $commits[$i] -- .
    git rm --cached -r *.ps1 -f -q 2>$null
    git add .
    git commit -m $msgs[$i]
}

git branch -D main
git branch -m alien_history2 main
