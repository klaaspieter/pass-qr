# Pass QR

Convenience commands for reading and inserting QRs in [pass] on macOS. Especially useful with QR encoded [2FA] secrets.

[pass]: https://www.passwordstore.org/
[2FA]: https://www.securenvoy.com/two-factor-authentication/what-is-2fa.shtm

## Install

```
brew tap klaaspieter/homebrew-kpa
brew install pass-qr
```

## Use

```
pass-insert-qr pass-name
Inserts a QR into the password store called pass-name. This will obtain the QR from the (macOS) pasteboard using `pngpaste` and decode the QR using `zbarimg`.

pass-show-qr pass-name
Decrypt and quicklooks the secret named pass-name as QR code. This generates the QR by passing the password to `qrencode`. It quicklooks the QR using `qlmanage`.
```

## Examples

Add a 2FA secret to store (assumes there is a QR encoded secret on the pasteboard)

```
pass-insert-qr amazon-2fa-secret
```

Quicklook existing password as QR

```
pass-show-qr amazon-2fa-secret
```

