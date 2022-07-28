<h1>Index</h1>
<div class="markdown"><p><strong>Alpha Release</strong></p>
<h2>Nbdev</h2>
<p>This project is an attempt to port fastai <a href="https://github.com/fastai/nbdev">Nbdev</a> to Julia. Nbdev&#40;both the oriignal version and the Julia version&#41; are based on the idea of using Notebooks for literate programming. </p>
<p>On a very high level the base idea is this 👇</p>
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA5cAAAITCAYAAACTw&#43;ifAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAGa8SURBVHhe7d0JfJTVof7xJyVAIiBB9oSdgEDCLqLFXq3Sq7SCoKJW7y1KW&#43;ytWPW6UYW6gBa329ZqK3STXnFXEG3VQlv0yr8gEhBI2HcIO4RNIgTzP4f3JEwmk2SSd5LMTH7fj6&#43;c885kMvNmlveZsyUUGgIAAAAAwIevuX8BAAAAAKgywiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAdcirB6RWn0tpy6W389xOAAAiIKHQcGUAABDnemZLq/O9cr&#43;zpKU9vXK0&#43;&#43;M&#43;6ZGd0q6TbocPLRKlX7SXrmvmdgAAIoJwCQBAHZKwxBWM5K/FThemY1&#43;5QoT0SJJWZbgKACAiCJcAANQhgeGyrisYINVLcBUAgG&#43;MuQQAoA5pEAdhKtE8hqpuAIDqQ8slAAB1SCy3XLZMlB5KlW5r6XZUwuYTUu9s6WhA91paLgEgsgiXAADUIcFjLo/0c5UY4CcIXr1BmhUwO273JGkNYy4BIKLoFgsAQB1mA1usbFX1yz0lg6X1/eauAACIGMIlAACIa7/f5wrOd5pK97VxFQBAxBAuAQBA3Dr&#43;lZR93FUM2xX46XauAgCIKMIlAACIW0/tdgWnZ5K3xiUAIPIIlwAAIG69d8gVnOFNXQEAEHGESwAAELdyArrEWne3dgUAQMQRLgEAQFz64z7pWMC6ltZZnPkAQLXhLRYAAMSlX&#43;91BceOtfSzpAkAoHyESwAAEJdWBnWJHd/KFQAA1YJwCQAA4s7v9kkFha5iJCZIt7V0FQBAtSBcAgCAuPOrPa7g2CVIAADVi3AJAADiim2wzA7qEvuztq4AAKg2hEsAABBX3slzBadDA&#43;naZq4CAKg2hEsAABBX/nrIFZwrznYFAEC1IlwCAIC48uFhV3C&#43;3dQVAADVinAJAADiyt4CV3CuSnEFAEC1IlwCAAAAAHwjXAIAAAAAfCNcAgAAAAB8I1wCAIC4MX2fdPwrVwEA1CjCJQAAiBvP7XEFp1eSKwAAqh3hEgAAxIVXD0grjruK85NWrgAAqHaESwAAEBce2ekKTmaydGtLVwEAVDvCJQAAiHmnCqXV&#43;a7iTGzrCgCAGkG4BAAAcaeROcO5vpmrAABqBOESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAgDokI9kVjJ5JrgAAQAQQLgEAqEOmpErtG0idzPaoKQMAECkJhYYrAwAAxKRT5mwmMctVjEZfk472dxUAQI2g5RIAAMS8vx12BQBArSFcAgBQR71&#43;UGqzXKq3xPvX1mPJ23lSmrv/V653OwEAtYZusQAA1FEZ2VJOvqs4SRH82rlVovRQW2lMcxMAE9zOCOqbIy0/7ipB&#43;p8lZfV0FQBAjSBcAgBQR2WacJZdRjiLtNb1pWfbS9c1czt8OmHOXs5eKn0Z4iymrftd10bodwEAwkO4BACgjpqVJ92&#43;Vdpx0u2oZokRbr0sCDiDaehuu0WiCZYdpKtTvDoAoOYQLgEAqONePSD9ZJu0v8DtiICv3L81ZVJbllYBgNpGuAQAABH3p/0m7OVKe01gPVbNSdN2ud3aW2pQDeM6AQDhI1wCAIBqY2d0tV1v90WwVTRQGze&#43;8iq6wQJArSNcAgAAAAB8Y51LAAAAAIBvURUu/3JIGrnB2&#43;bkuZ0AAACIffk7tGj6WF3WtZkSEhLM1kxdLxur13KOuCuUZ58&#43;vjtNyad/LkHNuk7Vp&#43;H8GIAaFTXdYmfsl27e7CqOHUeRUs9VytChgdStofSNJtK3zHZOorsAAIAo9NZBafo&#43;aesJr24/x8a1kK5hTUbEsyOf65kLL9A92fluxxmpz2Vrx22pynrmW7rsns&#43;UpySlDpmid9&#43;7WwOKx9Ju1&#43;xh7TXqA1fVFZq17X2NbOeqAKJC1ITLQaulz465ig&#43;9k12hAvbDvK&#43;57gjzpjW4kdsJAEA1sjOojg36IrXIHzqay0zIBMpWoP0bF&#43;iDXz&#43;np&#43;fM07KNrptXShf1G3Cxho&#43;9XjdccrF6pSV5&#43;6PIxpcvUNebFrlaSafD5fW5urnltzTD7bMmLynUxAGuQrgEYkLUhMumS6XDNb0oltO1oSugXE3qSd3NsTrXfGb1NFsfE84zwgzzAADpmg3e7Kllua&#43;N9ESaqwCBCrZo3p3f0fDns1W67S9A6nPK3nGberlqdNiiNy/rpNH/cFWlatLC5frZ4OYqOLRZe75opw6F7&#43;uqtBGa465hES6B2BM14TJlmXTolKsgZjT6mtcKHA57vYFnSVc38/4FgLrm2o1et9jyvNhJGtPcVYDT8pQ1ZZAGTlrv6uWZrCWFE1WcyaJClqYkDNQkVwsdgHfrX49cqW8/7LrFXvlbzX35ZvVq4i4mXAIxIWrCZfsV5m3DjT9B/LOtnuVpb4LoABNAbbfl8wiiAOJEqPkFQgl8j7Tvhz9qKV3Z1O1A3bNmurr1uFXF0TJpiKbOf1m3DeygxolSwdED2r51sf729ETd/&#43;HNWhBtLZcFi/Wz&#43;ueb2OtcMUvb3h&#43;pyuVCwiUQC6ImXPbJkVYcdxWnYYLUvYJhA8E/g/hjJ2wKV&#43;PgrrsmmPaq4DkEADXJzoZuJ/SxM6RXRnW2aNrW1Du3Sw3M5&#43;6z7aXvEGSjypY3L1OnM31KlfqLFdpyZ6ZiZg7D7bM1rP0oncmFhEsgXkX1OpedTUhY3qv8bX9f6ZXO0m0tpX8/W&#43;phgkQ4G2LHui/D35Z&#43;Ib1mTpIe3Sl9d5OUkS01Wer9G&#43;727fXSxFwpy9wWAESa7ZHxXrr0RhfvcytctsWzrPesd3wu32Xf82zvoY3mffQR8/6J6LJ/9ZlgafVo16QSwXKfPh5/ZumP8R/vkwr2a/XsuzWomd2XrLThb2uju3axgqPaumim7hrdX11PX88tHdJ/tO6a&#43;ZE27i9wVyxbQdYUb&#43;mQwGBpfTBK7d2SIgndpmvN6Z2RW2qkYP9GfTTzLo3OPHN7CclpyrxsrKZ/tFFl33U7YdJHmj72MmWmJbvHbI5P5mUa&#43;8xsLd1R7mhXAEZUt1zaELgqw1UizIaQOYe8f4umg0f5tpnjtK/iz5K4Etx9t2MDb9mbe1u7HQDgw7S90o&#43;2uopPVW3ZPGXOAhKzXMVo/DXpz52lUcVLQKC2rZ/RX91uXuZqRuoYvf//fq8rOoYTMUu2&#43;F3xxqe6e&#43;6N&#43;tb0wPGbIzRnxzsanuqqeSv1/JWDNH5BOWEqjNbH7bOHqf2ZpsYyFI0RrahlMpyWSxMOFz&#43;ji/9tgkKseFIsKeNBzZv7sIa0DTx&#43;ecp64iINmVDOhElROVkSEF3qbLhE1dhvtT83f6dV5p13jduOhTnL78o46sLcpaE3BoqQCcAv2yX1j/ulv1aym2wwO/N5pwbSf5n3psqsmRkcLi37xdrnnEFHjYKVv1TH3ncp19VPS8rQTb/6gx6/caA62IGXZSoZypKSkpSfHxyfAoJawXrNuKibbg69akiAiicOsi2XTQZOKn922/RpWr1unM6NQLjMM79vkPl94Ux7pHQTFFeZoOgO3ZF/3adWX3&#43;q/PsalZMlAdElqrvFIvrYUGW/zX6gjTSjk7Swh7TCnICEs9nr3m9&#43;bmgY3ZejnQ3Z9203J3Mrpcwcr1uaHUcFAJVlg&#43;Bf0k3I7Fry/bGyNpj3pb8f8Wakte9Jr1cwK215lh&#43;XEpZ4W8vPpVcPuAtQKxIzv6sZY4KeFPnZmnnrBerYpKUGjZ2uRVuPKpzORaWDpTVIaebz2dr&#43;3u0lg2X6vZq/KU/HCwtVePKI9m/K0sz/Pk8pI/rK/UiZEgdM9H5u2ywTBQPYVk&#43;7326ng2UEFORo5vUBwTJ9nGat3KkjJ73fczxvkxZOHaLio7h&#43;vJ6cv89Vjmj5awHBMmmE3ljjHnPhceXtWKv5025SRnqzMz8PICTCJWrM4EbS1DRpbjevRbq8bXFPaVJbb2xSv7PC384JfxBKRNiQmW1Owt4/JF21QbrSfKrZOgBU1tXm/S7w/XG2CZv2PbAq7HvS9SZk/nav2&#43;GDHQ7BOMza1lpDf/m5Zl4X6gmRp8/&#43;dKsu6NhS/cbP1tqwvuhM17hZK7X7uAlPx/O0ae0t6nb68zNH79xW3DRoDNaL7z&#43;uizs19UJVYmOd06m/bnxmsQ6&#43;M1xFvWijQcHyt3VPcbJM1S9mPa&#43;RGW1Oz6ZrJTXtpMF3/0L3etXTZny8yQXyQ9rrDfz0nPNN9ejiHrP5f9PUbrp43EtauY4usUBFCJeISnb5kUfNp9Y75uRqqQma4W52gqf1mV4LwGTz899rLp1vQm1GcvibH3b2x4GrpJ7Z4W/fWuevhQFAfLrK5Aj7HjgnXRrWtPR7le0CW5H3wuhqWy&#43;h4pZSThaiQEp33ThzvTbMf1pDQ37pkK/s50ep70VPKKvcgJmqSQsX6vmRGWpl/&#43;5JTdWpW2edvsnta/VeYN/bS&#43;/RJek1/K1tFa39128DurTm6q7e9d2EPAFb4HIo1uId2nW60EYdhgS8CHLv0qB&#43;4/Xy0q06WsfmmgD84vMCcceOO7ItABPbel13F/WQVvYKfyvqvntZE28ZlKItnBM568tCabX5hAt3m3fYa2HonVNy&#43;8566and7kYB1FnDTbD8qwmYwe9VD4XRbGTHxYfjsbTSJwTJZofd7DqbU8zliAKJzdXl4rs1d&#43;8RbcmapYdDpMz87Aka/uLKcrrI9tGAtOahZ5vds7LkrK7f7KKOrhjd9il3cYkRqZWUqD7/&#43;YpGBOTL/OznddOAjmrSJE3DH/lA2XvCfDEBdRzhEghS1H13XndpbeaZbVNvb3&#43;4IbOy7IRHgZud3MOO6&#43;y&#43;Uhq1wZxIms/NJSyPAsC5ubnXqmnDp1/2C7ng1kv7XvdFf2mree&#43;LtZlj7SRFD5v3zHbLpaSs8rfOK8Jr4Y0qiY3Vof9IPTR3r/atmqVx5nkQKPens7W8TrW45etopb&#43;MTVLG0M4qevkkdhypGYunlW4Vzs/Vew8PU2br3rp13pawxrUCdRmzxQJV8MQuaf4RbxmbtV9KBTX4Kgpnog&#43;7ZEp3c72LGktDm9T8WFQANWd2nhekNpn3o8On3E7H9uSwQwXCYSftsesDB7LLksSqo2HOZG7ZoRh2rH&#43;sKtjypoZ3Gh3Q6hg4k2o4S3g4WVOUMHCSqxiTl6hwYgTmRt0&#43;W8MC17oMuYyJn9liK/EYK1KwXxsXvKUpDz6iVxbkBs0em67nslfptqIpZgGUQsslUAW22&#43;z73aTsDOkzc0Jix0PVlFBda4O3Dw9Lv97jdbdt/rnUN6fizU5G9DYz3gJRzS5bYl&#43;rga9d27PBLhEVHCwr64ZzpAYJruLYgBarW2XY5bViWWLHLhriyr4kNSs5Sc8/N2qLK0a3dupQ4gB8oKydVWxjPN31eJz&#43;&#43;MkOHdy9UrNKNAuv1z3vZrsygFAIl4BPfZO98VBvd5W&#43;Y0KmXR8u3K2m2GUFKtrsZETXmJNUu6g7gOjzgnlt2mVG7Gs18LUbSXZyn3hjT3RCbbFjo16&#43;JFPjZ6/W/rLy0sbVes8VT0u6RJ2r0mrXvp9Gu&#43;Jp/3ha89eX/qX5m97UVd2eV46rR4MOF4xxJc9Tz8&#43;X32kLklplaOTTL&#43;oOV7fyT/r8FgeIc7H1/gpEMTsm6T0TMu3C4&#43;FudqmBy0Os&#43;9mhmsZ1huPdWBt7BMSpfx3zeiD8cIs0eLX0c29ay2rVpr4rxIGWid6azEf7S6cGltxOxNQq&#43;Hna&#43;FG2nh/VU&#43;36/Yemf7ROuYdcU2vBUe1a96Emjvi&#43;SixN&#43;fRwVWlUUZM&#43;uv5e8yFUbJFuHvaAPtp8yOsemr9H2bPH67xeozVn/cGgLqO1q0XvG3SDK1v5M4brsvGzlb3rzPqfBUcPKHfdIs1&#43;ZqwGNbtK7xbPAZSrd69qdnq90A9zNutA0RSx9vF&#43;&#43;Du94dVOS20WeHwABGPMJRClpuyU/nlE2nLCWxy9ptiZce0ERgBqzpw86ff7vNe7tc685o9XsmtnKLbLvu1ZEa7ZB6VRG13FeaNL7E3oY5XXCmsn/EnMchWj0de8EBqdcvR8WobGhzsZavpkLVk8UQOK/2aVHI&#43;4/V1d1W2E5lSUHFOfU/aOMNd9rPYxl1aBtsy&#43;Rj1GzQkz9JY3ZrMsg/Xiuk80JkaWZwFqAy2XQJSyS6n8vbs3GYddTsXWv21OFDOTK94AxIbs494Yyqs2eL0Girq6RiJYWldWcjz4yGZSr6CGmUd3ekEt1rb40Us3fRhiFtMQUoZO04oSwbIK2g3XjMXPKXDZx1KShui5D28KL1jWmER1HDlDi6cN9dbsrFBrNS5&#43;jF9TvQp7DKVr3NzXdBPBEigX4RKIAec3kianSn9Jl1aYT/OKtn19pVc6S7e1lIaG6HZbtIViZ5kFUP2e3CWdt9obQ1kd/tBR&#43;rF5D6isO1q7ghPrk93Eg5TMcZq7c7fWzn9Jd17bT12K01OSUjP66do7X9L8tbu1c&#43;44ZZZKVkk6p1eq&#43;b&#43;rpfbSORW8z6dk3qb52zdo/kt36tqMMz&#43;b0uVS3TJtvjZsn6/bSv&#43;isjVN1YWpxfdAqb3OKb7NMyq6n&#43;E8jhRljpurnduzNOvpW3Rpvy4lgmZKl3669JZJemFWlrYc&#43;b2GtnAXKFXD/ugeb78MFd9V89tSM8xjfnqWsrav0LShHUOvDwqgGN1igTrITgzyX1tdJchvO0g/qsIJKYCy2Vmc7fq1a8y/67&#43;UFhz1ur5WVaN60rFy5hX5aRvp8TRXqYL6WSpeYikxQToZU2MUKxZb3WIBIHbQcgnUQWUtGG4XUidYApHx&#43;C7pW&#43;ukxkulntnS6I3SxFzpxf2VD5Y24GUke2Mo/6O5lFpO88k9rf0Fy2A2ZE7f5yoAAJSDcAnUQWvL6OZ2ZSV6OQEoLesL6WcmQHZdKT24Q5p3WDpWifGTNkTarul2Uf9bTIj8RXvp43O92U1X9pKuMa/Rl8oJp3/sJD1V1kQtldAzqLvhs3tcAQCAchAuAZzWz53MAqicT495QXLgKm&#43;bvFPaWIUur7ZV8rOe0poMabH51wbFO1tJ32gsFc1PU95SQXbt3Ei9hu147UB24qGoGEMDAIhqhEsAACpg15ycYALk5eu8Lq6Bm12D0naBta2WVWHXtX27q7dkSN8KZnteV87kOueWmtyk6m414TKZMwQAQCXx0QEAQAhFgbJvjvR1EyCfMAHyb4e9yXkCt6qwwe2yJt4s0Ft6R2YdyeGVXHakIufUcwUnJ2jSPQAAgjFbLFAHdV9ZesyW7Ra7tKerAHWAnTH0/456LY52bUn7GXQkYAZWP7O5BurSULqosZRu/rWtixl2q8J6tGXN8mxva2pa5de0rMiwddIHJkwXebGTNCZOus4zWywAVA9aLgEAdYYdH/nTHdL5q6UGJlx8c61093Zpxn4vZNpAWbT5ZcdAPmZC34ZMc/smmE1qK13XrGrB0iprlmcr0sHSCr6fwV8AAwAQjHAJAIh7T&#43;7yJtux4yOnmvJiEzIrMYlr2AacJT3QRlrUQ/q8l1eOlLJmee7W0BUirHdQuLST&#43;gAAUB7CJQAgbj29W0pfKd2/o&#43;oT7gSzoStw&#43;05TaWJbb6bXJWazrZXnN3JXjhDbslpWa2p1tFpadjmUQLbrMAAA5SFcAgDizv&#43;YUGnHFt&#43;7XdoQgS6ug0xY/JkJkHZc8vJeJbf30r2JeQYGhbFI&#43;ksZXWLtWOnvt3CVCAvuFnswYDwqAAChEC4BADFvf4H0&#43;kHpv02YPDfbG0dZ2XGTdgbX/iasFW1XpZwJlJ/2kB4xAdKGuZr2u33SG&#43;axhWInCQIAIFpEzWyxozdKb4b48FxoPtAHR7h7EVDXMVssYtWuk1JOvrTGbJvMc3jjCe/fqnR5td0&#43;bYjsazZbjsbPmlcOSDducpUQqnsG14QlrmDY8P1FnMyoymyxAFA9oiZcPpQrPbrTVQJMaCP9PM1VAEQE4RLRaokJibPyvLC4zQTHQDZY7itwlSrq1MCEtXOkq5tVbzfWSPmuCZavmoAZil3Xck66q1QTwiUAoDLM22l0GFnGAtKBa2wBAOKPDZQTc73ZXM8z22M7pfcPSSuPl9z8BMv2JlTaiXY29fb&#43;jYVgaZU1Q6x1ZRmfmwAA1JaoCZe2a1LwzHTWMnPS8VkVujsBAKJXqEAZqdlcA6XVl6akSltNqIzksiA1oWjtzVB&#43;31EaV00T&#43;QAAUFVREy6tK8qYTn12nisAAGLKP494y4BcuV7qk3Nmq85AadkvLB81oXJbH&#43;nBtm5njHm3jBlih5nPyuqaIRYAAD&#43;iKlyW1TU2h7W1ACAm5H/lTUIzdrPUcYV06VrpyV3eUhorzHt50RZJLRO9tSbvaCW92kXaZQJlVk9pkgmVCe46schOWhRKda1rCQCAX1EzoU&#43;RXtnSqqAP1MxkczLSy1UA&#43;MaEPogku46kbWWbd1iaa7YTEfpU6ZnkCo6ddKVzQ2/rarbuZrPXaV3fXSHO9M7xxpoG6mEe76oMV6kBTOgDAKgMwiVQB4UKly0SpRxz0mpbgYCKfHrMC5R/M2HSliPFdmcddra3xuT5dXwZqqs3eDPnBhphjss7XV2lBhAuAQCVYd5OAdQ1PZNdIYCdifPBHa6COu/4V1L2ca8767S90s9ypR9skb7txk4OXi1N2RmZYGkDpZ1sZ1EPrzurnc21rgdLK1T3V9v9FwCAaEXLJVAHPbVbum&#43;7qwSZ200aeraroE55fJf0yVFvkp3dJ93OCLJdOot0aODNEE4LZfneOihN3&#43;eV7SQ&#43;1zXzyjWFlksAQGUQLoE66uurpX&#43;FaHX6ZhPpH91dBXWCDZW2dXLrCbcjQmzXmMubSpea55RthQsMl4gNhEsAQGXYz34AddADZSzPYJeOeHaPqyBuLTomTdjhzehqu0NHKlim1pe&#43;11z6cycpr5/013TpntYEy1gzJ897bgAAUBmES6COsi1JY0wICMV2jUT8sYHypyZI9s2RLlgtPbErMqGyT7J0twmQH3aTdvSRZphg&#43;Z/mudWknrsCYs6k3Mi3ZAMA4h/dYoE6bIs5ecw0r7mjX7kdjg0Ln/Oaiws2UM7Ok/56SFoegfUl7TeS7Rp4S9f0M88TO3vpQFNGfKmfJRUEnR3QLRYAUBHCJVDHnWtec2uDXnOEy9hiJ9/57V5pgQmS24Nam1YH/W3DYdeQtO&#43;7betLaXYzYbK9&#43;bej2Z9utgR3PcQvwiUAoCqiLlyO3CC9E7SuVwNzJvPlAFcBEFGEy9hluy//ab/0Z7MFB4GqsKHyRy29MZKo2wiXAICqMG&#43;n0cUu5B7shPkQYAwYAHj&#43;14TJb62TvrFG&#43;uM&#43;/8FyUCPpqXbS&#43;kyCJQAAqLqoC5e2xSSUJV&#43;4AgDUMQcKpFcPSLdv81qav7dZmnfYXVhFNlBOaitl9ZQ&#43;7UGoBAAA/kVduLQnPKF8TrgEUIdkmfc8O2OnndW1&#43;efSdzdJz&#43;0p3YW5MoID5aOpUn8m40EITZnpFwBQBVE35tI6a6l0PGj2yu80ld5LdxUAEcOYy&#43;ix1ATKWXnS&#43;4ekz6r4hVpw74/2DaQBJkCOSiFIInyDV0ufHnMVhzGXAICKRGW4/Lr5UPtX0IdaSj3pYD9XARAxhMva9flx6e2DJlAelhYHve9Vhv0C7nvNpeuauR2ADzdslF4zz8tAhEsAQEWirlus1aGBKwTIO1V6in0AiEV2DPlDuV7rUL8c6dGdVQuW9oTYzu76WU&#43;vZwfBEpHSuaErAABQCVEZLjuV8aG29ktXAIAYs&#43;WEFyj7mjB53iovUAZ3OwzX4EbSY2nSzj7SbztIA&#43;nuigiz65kCAFBZURkuO4doubTWEy4BxBg7hvK6jVKnFV6gXH7cXVAJ/Ux4HN9KerWLtL&#43;vtLCH9EAbqQmTrqCadE9yBQAAKiEqw6VdyDuUzYRLIOK6hXi9reO15ovtwv&#43;ICZIZ2dLVG6Q3gsauhcOOe51gAqQNkkt7Sr9uL13fTDonxFrAQKRlEC4BAFUQleHy3DI&#43;1Gy3MgCR1TJEWLGzNQdPqoWKzXatlO1XSA/nSjmVXDaktwmU95lA&#43;f9MoLQTKv08zesCC9Q0&#43;yWGncAHAIDKiMqPDjt1fqjuXpsJl0DE9S1jvN5nhMuw2PUoJ5ogmZkjjapCK2VRoFxwrrTcBMonTKC8kECJKBDqiycAAMoTtd9LtgnxofZF0NqXAPwrazIYu0QGSjt8SnrLBMj/3i6dv9ocv1XSYzul7EocL9vldWJbaVGPM4Hy643dhUCUuPxsVwAAIEx0egHquItMqGmQ4CoB9he4Qh13wByH102YvGubdKEJk02XSddulH6xu/LLh9x4jvRuutfldXKqCae0UCKKfbupKwAAECbCJVDH2VwZambINZUcLxhvntwlXWDCZPPPpetNmPzlHmlhFboK21bKKSZI7uojzewsXckJO2LEyBSpZ8B7Qw8m&#43;QEAVCBqw2WoiQR2nnQFAKgmNlR2XiHdv0Na5GPc6Q3nSO909VopH2wrta7vLgBiyMOp3nO3XQPpZ&#43;Z5DABAeRIKDVeOKtdskN7Oc5UA&#43;/pKzZlkAIio3jnSyqAxg7bFIifDVeKcDZHvmPebVw74mzis/1nSqBTp&#43;y2kVMIkELVOmTOfxCxXMRp9TTra31UAAFUWtS2XnctY6zK7jnfVAxAZdqmVCTukviZY2&#43;6vP99VtWBpA&#43;X9bj3KrJ7SpLYESwAAUDdFbcvlb/ZKt211lQC/7&#43;i1CgCInHhvuXzcBMd/HJa2BoTHdV&#43;6QiUNMGHSrj05pLF0WROpDUESdUg0nDCEmH&#43;s0mi5BIDqEbXh8m/mRPDyda4SYEIbb2FxAJETr&#43;Hy1QPSk7ulpV&#43;4HVXQqYH0naZemLzUhEnGTqIussNUbt8q5UbB3Ad2aMyv20vfPcftqALCJQBUj6gNl9tPSO1XuEqA65pJr3VxFQAREW/h8jMTJh/fKc0KMW47XDZU/ldL6b42bgdQh9n1XLN8fEkTaYkRaL4sCDj7IVwCQGRE7ZhLOzPdOSEm7tnkY7INAPHtyCnpzm3SIHMiXNVgabu9PpFm3mt6EyyBIvUi0Rc1gmww9LsBACIvalsurYxsKSdoAp9eSVJ2HZnBEqgpsdRymf&#43;VtOZLaaPZNplt2wmznfTGU&#43;4wW1W67Q1qJF1xtreunw2XAEp6/5B0&#43;7ba7xZ73Lz&#43;q8N55nW/uKerAACqjHAJICrDpb0/dpyX7YpXNBHPvgIvTFZVWn2ppRsz2d78W7R0SD8CJRD17HJBP6mGgGtnd7ZjOEeY9wIAgD&#43;ESwBREy4/N/dh1kHpg8Pe2pORdGcraUqaN7YKAAAAkcdpFqpfQY5evChNyQkJSjBbctpFemmNuyye1JXHGWF2JteHcqXzV0v9TMh9ZGdkg&#43;XVKdJnPaVftCdYAgAAVKeoPtVKT3KFALYlc4uPbnERt32&#43;xmcmnw4TxVuzrho9faXKn09knz59bJCaFQeR8Zq/210Ub3at1WsLclXUCJ2fu0CbI9wqFRXqyuOMADub60QTKO0MlAPM9qgJlIsjfKzs2MlXu0hvdTW/h26vAALYpUjK2wAAVRPd4bKhKwT56yFXiALbP3tCz2cH9d3N26g3bx2kO&#43;eVlxbzlfvJZ8UBND/3eX2yw1WAOJJ3Snr9oDcZyBXrpF7Z3myuj5lAGcmlDVomel15Lz9bejxNWtJTur6ZuxBAnXfsK&#43;9LrdTl3hqX5W3NP5dmHnA/CAAIW1SHy6FNXCHIP4&#43;4QlTL14xn/qXtrhYd1uilQc0CWlgH6bnPY&#43;JgIka8e0i6cr3UN&#43;fM1myZCXkbpef2SB8ellYFfRcTjm4Nva1PsvSdptKPWnoB8uXO0sIe0v6&#43;0h6z2TGiH3STfsoSIkCdZ7/UamOCZL0l3nb2Uu9LrZ1hTAh0oMDrUQEAqJyoDpfDzElkSj1XCTA/VvLQB7fpzZXmEypqHNPmzwI66&#43;Z9pr9siqJmYMQsO6vr0LXSCBMs/2KeUsuPn9mqKtMEyXtbS/93rrQ209s&#43;7yW9ly79toMXIL97jjS4Ueg1cQHUPfa9qP0K6SwTJO2XWrtNkLSrlxRtlbE2X6KHLABUTtRPb3FpiNbLvSavzTvsKlHmijFjlOrKUq5&#43;&#43;vtFFYy9BGLb/&#43;6Xrtkg/T0CX/rYlsn7TGhcYALlChMkn2wnXdTYXQgAQezkX0/skq4y70G2K6t9L9p&#43;ouL1MBubs59QW7LZAABVF/VvoxeX0TV2bpS2Xp648od6arCrGPm/ult/3egqQByyXWH9sGtN2lZI273Vtkw&#43;kSZ9nUAJIEhBoTeztO3qWj/L2y5YLU3YIc3J87qylqVhgrd1aCA9kirl9ZOO9C&#43;9AQD8ifpwabvGhvJ/URou/7E6WZdNGaMzE90u0r0vZ8n/3S3Q/o2LNPuZsbos88xyFwkJyUrL7K/Rd83UR&#43;v2FM9UGujIv&#43;5z1x&#43;oSW5fkQ9GtT8zBtPc1n3/KuOeFuzXxo9m6q7R/dW1WdH1E9Ssq/vdG/ebe1hZ&#43;dqxdLYeGd21eNZcO9PuZWOna9GO8AbmFezfqEWzn9HYyzKVlnzmfiWnZar/6Ls086N12hPuGD/7GBfN1jNjL1NmWsAMwMlpyuw/WnfN/Ejrwr6xsuQp65mLAu6r&#43;fvd/bH2uUtjUT1zwlYZtrvrt83r&#43;sG20uKeUpbZ7PhJ270VQHR6/5DUdaXU8nOptdlst9OircMKaXY1ddGx3Vx/sMX7HWcv88ZB2q6uNmjarSJ2oi87a3T&#43;AG/b0lv6mXnvqez7FgAgPAmFhitHLbtUgV0LL9jBfqHHZNak7bOHqf2oD1zNmLxEhRMa6Jcde&#43;uuXLdPN&#43;j9Xa/oitauetp2zR7WXiV/tFATzYdfsIL9q/X6jy/UTa9X/OmdMnSa5r86Vn2bnxmEVuo&#43;luOKWdv0/sh2rubJ3/SB7hk&#43;qvSsuCUkKeO2d/WXXw5Vx&#43;Dxb9tna1j7UQq8B5Pnr1GX3wwu5zGla9zceXp&#43;aEeFHE5nguDq13&#43;sC296veJuxylDNW3&#43;qxrbt3no27LBffXr&#43;vGFN6niQ5yiodPm69WxfRVwiD2hHmeJv2mBtsy&#43;Rj1GzSnxJUD61GXKur&#43;vymikrxG9c6SVQeMj7cyrdoKcirxyQLpxk6sE6WFuo10DqXtD6RuNpX8/m/GRQCyy69BGermg6lC0lm2b&#43;tJzHcxnmnnPqQwblgO71H410JwouTIAoGIxMbrgwjJaNP4WpeMulZipa5&#43;/wlWsV3X7mzlVaNkz8rI09YKeYQVLK2/erep3wVRlhXf1ChVsma3rew2rIFha&#43;cp&#43;/lvq8YN5Cme5zkmXnFvBY1qv6d8yoTAn1FHLU9bUC9QznGBp5c3Trf0u0NQyDkpe1lRd0DOcYGnlad6t/XTB1KzwfneAgpxpGhoULJNGzNK8u2s3WFp2JtZgdlZX20JQETupzvvdpBEpUr&#43;zvM2WZ3c1t2HC6Vxz2fPmJO8Gcz2CJRCbcnxMzlUdEk3is1trEyKvNu83T7fzlh862t/b1mdWPlgCAPyLiXA5pIzxVwuOukIUanfZY5p8ZmYfrb/nRS2udN/Y3Zp35xBNWu&#43;q4Vo/SUMe/1dxV9ymrXsHdNMtT5J6tw7oh1yQo2lDR2lORbkyQP6M4XqmrK61lbZe4&#43;9&#43;r9RyLrvn3akhlT8omjTkcZW6a7vn6c4hk8yllbN&#43;0hA9XpnHab8kuGp8yd&#43;TPlkLZows3dJbC9o3cIUg88J8iPYk7h0TJpeakzu72fJV5oQPACLJhslJbaVjJkCeHCDt6iO9Zd5v7m4tDTjLXQkAUGtiIlx&#43;q4xvH7edcIVo1GSAbg5svcx/Sne9W7mZfQpWvqIxM4KSXfo4zczapLzjhbI9mk8e2amVs8Yp3V1cJP&#43;pZ7XANSE2ufBJHTfXLSxcosnermK2G6y9HW87ricvPNOGtnveZI0vkYaSNGTqQm3KO&#43;5d/&#43;QR7Vw5S&#43;NK/PJ8PTVtUVhjCJMybtOslTt15KR3W1vm31vqceiDqfo48LAVrNQrY2aUaP073YV2ZlYF98swf4Nniw7KaQVa&#43;coYlT7EM5W1Kc8ds5M6snOlZpW&#43;MT317IKwWmlDfkmQfq8&#43;&#43;XiCBkRJALNdVkP5JIq/wAFQe2ywe9e8LXZq4M2wWl2bvf1bW3pfWNkuqjZMPpoqNaiGvqr5lV2rBABQmjkZjwmZ2eZM/7OSW8&#43;V7sJatG3WFXbM6plt8hJ3iXF4SeHk1IDLUicXLjnsLivcVjjrioDLzBb4oybUFC6ZnFTichMFC9/YfNJdXtK2OSMKk0pcV4Vj5u51lxYx9yfoOiZcusuC7S2cO6bkdZPu&#43;KTwoLs00OElkwvNZ33AdScVfhp4N7fNKjQxO&#43;Byc1sjXixcU&#43;rGThZufiPoeJptxJwd7nJzDfO7gh/nFW9sNj8ZwrY5hSOSSl5XY&#43;aaR&#43;acNMcj&#43;PIr3igMfYi3Fc4ZEfz3GFNY4hCHeJyTl5jHNCvob5M0onBWGX/H2nK4oPTry27D1rkrAKjTGmWVfG8o&#43;MpdECfePFBY2HJZycdotzh7mABQ7b5mTnZRXYJbL3Mn6akSLWfl2awVb5VsUku692e6vIw&#43;lO2GTdS9rlzktSU7XKkqtmrhDFd07r1psEI1tDXp9k2NdmXPYu3Y5YplePChMepe6sYS1fGSuzXG1Yr8LWevK5mjsuKtkq2WSffqZ5eXMelPu2GaWPqgqPiobF6hkoc4Sff&#43;7PIyuqm207DSN6aKDvG&#43;uc8EjbNM1&#43;QFMzQyGvrCBmhSz1sSJNj6oFZdAIhHk3K9NbQD2UnNmMwHACqHcFnNgsdevvrw3xVe59jD2rbMFZ1Lvt6&#43;7IlfEttqQOAcQkb&#43;yVOuVAXbt2qBKxaZfH59t3xG0Hb2RfqVu47nhAqq&#43;qtbnFO6i2/A4zhc&#43;qCofdkHRW1LHxQV39rhbSp5a5fo62XfmDnEA1Ty1vJV0SH&#43;1YQJJcdZJn1H3&#43;zCYEQAiBa2O6ydwCyQXcIk8LMbABAewmV1C269XPR9vRCxCW&#43;i1QEdC2OW0dBaKTMoD8ayH02apBLnJ/m/0nX/s7jSM80CAKrHk0EdiuyM11t7S9c0czsAAGEjXNaAkq2XlZkIJjYlZfyH&#43;pVY07My9mvNfFeMA2kj/1uv31Fyrt7cySP1P4uJlwAQDd4Jejse0dR8jnF2BABVwttnTQhuvXz1Yf29wr6x9VS/ZCbR/JV7yl4r88gWzQ9cvd&#43;4tEdzV6qCpi11risWmfTpSW821gq24yvvVt&#43;qLty4fZPmB3VP6tf&#43;zHTB9UofFO0p&#43;6BoS&#43;mDouKjUq9&#43;0BIt87Wy7Bszh3i&#43;St7apar4EKdoyMPzVDJf5mryjc9FbC1SAEDVBXeJva&#43;NKwAAKi2mw6X9QLjfz5w1Nahk6&#43;Ui3TtnZdlB8bQ0DbzeFZ38x57V/JBNngXa8uGUoHGPSfpmlzRXLtuJsgZHNmmt/v1c2fnDu0sj1p3zsUfe1KZSk8UUaP3fpwYFOOni9DPNoGmlD4qeDX1QVLDlQ00peVCU9M0u5sg6aQNV8tby9diz80O3Khds0Yelb0xhHGKTL4fop&#43;&#43;OKRlk10/S9dM&#43;L16LFAAQHRrxtTsAVFnMvIV2b&#43;gKQZ7cJf0xnEUVa1tQ62XuTx/W0&#43;XOqNpCvW&#43;4wZWd/Bkaftl4zc7epaMumeYf2qylL9&#43;moaODIlnqzzWyT8Uzkv7j6dlavt/eWL4Obc7R6p1FkTddg35QcjaD3Mn/povGv6ylmw8U/34r/9Bebc75WLOfGatBzZJ16/yK/yD5c0ar13kBjyV/j7Jn36ZhNy/yrlDsDo3uc6YZtEXvG1TyqORrxvDLNH52tnadOSjavPRl3TZ0dFBQTdXPR/Y5M7Nsi94qfYiH67Lxs5W966gL//a4LNXLtw1V6UM8UmEc4tNaD52i10eUbCddP&#43;Fa/eZz4iUA1JZ3D0nHA9a3tBP5AACqLmbC5ZXlTLD5F/PhEAtKtF7mL9KioIlPg7Ue8hPdG9QLND/7eY3KbKsm9b2ZWpNTOmvATdNLzkiqJI2Z8V1llvqQbKO&#43;I1yxyKI71beFnQU2WSmdM3TXojOJt9dVz5eaHTX7&#43;Zs0oHPz4t/v3YdW6pxxsUbd8yd9lpevrWYLR4nHktxamaOCH4cJcJO/p4BsaQ&#43;KflL6oOj5UZlq28TNZpucos4DbtL0oBtLGjND3y1xUFpryE/uDeoaax/jKGW2baL6px&#43;fPS4DdFPpG9OM72aGXgIlpHYa9uwrKpkv12vCtX9WTkBQBwDUnDlB3XGGM5k3APgSM&#43;HylubS/WWMg1j3pStEuyYDdONTg10lDE0u1AMLJpdamqMi6ZMX6JdDQ82ok6qM6yvx&#43;9tdqRdmjQgKXxFwxYigkFWG9Ml6d/yAoOVXmujCBxZocuUPihb8cqiJkyU1ufABLaj8jWnygl8q5CEuR2LHK/Xs/wZNhbt&#43;vK6allNBF2kAQHVYeMwVnOFNXQEAUCUxNbJgaprUI&#43;JJp2Z1GT5NU0NmmX4KmLemWMqACVq4bJqGhvVtaoqum7lGiycOMKXQ7O9/OqPsg9igXuBTIlEdR76mnPdvUzk/EiRVl6dXMBvCkIf0Ws77Gldepku5TnPmTdCAUA8kZYAmLFymaeEdFHNTM7Vm8cTQt2WO1IAJC7Vs2tAyj1kJ5n7NXLNYE0PfWAXs8fy1XgzK9&#43;vHj9Xr4S1&#43;CgCIoNUBHW0aJEgjq/LWDgAoFlPhMholndNPxWviJ6XqPwe2cpUyNOmrO/72vv77vMBPsCSl/uejuqSTq5aQqOZ9x2nuzt1aO/8l3XltP2WkBiQ98zszLr1FT89aqA379uq1G7uXH5LM77/7s/VaOO0WXZqRWtwqmZSaoWsffl9PfaPkOEt73zpf8ZyW7d2irFkvlP799r5n9NOlt0zSC&#43;Y&#43;rN29QXcG98dtmqoLi38mRed1aqSkzldo2ort3v04cwDNbV2rO19aqO07X9PwjmV3Ok1s3lfj5u7U7rXz9dKd16pfwGPxbudS3fL0LC3csE97X7tR3cs7KInN1XfcXO3cvVbzX7pT1/bLUMlDnGEe39OatXCD9u19TTeWdWNNO&#43;s7AX/XpNQhMg&#43;1pMR03fTaHP1n4C9I2asV22Nh4DAAAABQtoRCu3ZEDOmZXfKbRqt3srS8l6sAqJIBq6SlX7iK062htDbTVQDUWY2XSscCJr4pGCDVS3CVGFY/yzwWdxZkWy6/NI8LAFB1tFwCAAAAAHwjXAIAAAAAfCNcAgAAAAB8I1wCAAAAAHwjXAI4rXGIdwO7huyJmJryCwAAALWFcAngtIxkVwgSvMg4AAAAEArhEsBpmWWEy2VBy5MAAAAAoRAuAZzWv4xwueK4KwAAAADlIFwCOO3CxlJiiEXRc/JdAQAAACgH4RLAaTZXpjf0yoGOnHIFAAAAoByESwAAAACAb4RLAAAAAIBvhEsAAAAAgG&#43;ESwAAAACAb4RLAAAAAIBvhEsAAAAAgG&#43;ESwAAAACAb4RLAABQ57x&#43;0BUAABFDuAQAAHXOQ7lSQaGrAAAignAJAADqlFMmVK7OdxWnR5IrAACqjHAJAADqtEbmbOiRVFcBAFQZ4RIAANR5I1NcAQBQZYRLAAAAAIBvhEsAAAAAgG&#43;ESwAAAACAb4RLAAAAAIBvhEsAAAAAgG&#43;ESwAAAACAb4RLAAAAAIBvhEsAAAAAgG&#43;ESwAAUKfMynMFAEBEES4BAECdMnmnKwAAIopwCQAA6ow5edLaL13F6ZXsCgAAX2IqXB4okFbnu0qAbg1dAQAAIEhBofRQrpS6XLpqg5T/lbvAsCdCj7T1ygAAfxIKDVeOem8elEZvdJUAP2kl/aq9qwCosp7Zpb/A6Z0sLe/lKgDqpMZLpWMBgaxggFQvwVXC8E6edPs2ac9Jt6MWfFnG2U7PJCknw1UAAL7EVMvlv465QpALGrkCAACIuMBuozaMVSZYnjCh7tat0rYTXsCrrS2UFonSz2i1BICIialwucN8MIXyzSauAAAAIu4hE8C6NJTaNZCmpLmdIbyw1&#43;t6Wm/JmS05S9pdiy2WwZLNmY99HG92kfb2lW44x10AAPAtprrFDlglLf3CVRw73nJtpqsA8CXS3WJfPiD9YZ/XYlGkvTmpu&#43;xs6YE2bgeAqHX8K&#43;mJXdIf90v2ZMGeMew/5V0WSuBYxrLU1rfaLetL41p47z1JMfXVOgDEDsIlgGKRDJe/3Sv9eKurhGBD5lPtpOubuR0AosZrB6Xbzet3b4HbESGtTcDb2ltqUIlutQCA2MF3dwCqxXuHXKEMtjXzho3SuC3Sr/dInxyVTsXMV11AfJqVJ7VbLv3HJv/BsqEJkIFbhwbS9A4ESwCIZ4RLANUiMcwTyN/tk36yTfrGGnPSmSUNXSs9ulPaH&#43;EWEwAVm2xeeztOekt3lMeePJS1pdWXpnWU8geU3Lb0lkakmCsAAOKW/RwAgIi7sqkrVIIdrvX3I956dG2WSz/Y4rVoAqhdjczZgt1s6&#43;OsrtKpgWVv2/t4YxsBAHUP4RJAtfihObmcbU5Cr0qR&#43;p/lbXaMdLhsy4mdDMi2aNrWzBn73QUAqo2dFdYGSNt11W52VtW3zev4aH9vs62PI2l9BACUgQl9ABSL9Gyxody/Q3pyl6tUkn29X91MGmVObgezvi0AAEBUoeUSQI16Ik16rYs09OzKvwGt&#43;9JbFuGC1d6XTU/tdhcAAACg1hEuAdS465pJc7tJJwZI/3eu9Gx7rxttZrK7QhhsL4b7tkuDTMi0yyYAAACgdhEuAdSaegnSRY2l21tJ0ztKK3pJr3aRvlOJyYA&#43;MyHTLmkycoO06JjbCQAAgBpHuAQQVa5vJr2XbkJjT&#43;m/WkqNw3yXeifP6y5721aWMQEAAKgNhEsAUWngWdJvOki7&#43;nrjNAeFOYHPb/ZK52abYGpC5swD0u6T7gIAAABUK8IlgKhm19a7r430aQ9pSU/pwbZS6/ruwjLYlssXTMj8j03eepl2XObPqzhDLQAAAMJDuAQQMwacJU1JldZlSHe0cjvDYMdlPrBD6pMj/Yn1MgEAAKoF4RJAzGlST/ple68l85pmbmcYVhyXxm6Whq6VPjjsdgIAACAiCJcAYpZtyXyzi/RWV2lwmGMyrb8fkYatk767SfrcBE4AAAD4R7gEEPOuTpEW9pB&#43;0V4a0tjtDMOrB6R&#43;OdId26QDzDALAADgC&#43;ESQNy4s5X0ybnS4X7SG128ersG7sJyPLtH6pYt3bxZ&#43;p/d0sdHpVOF7kIAAACEhXAJIO7YMZnXNvNaMjdlSve3kRIT3IVlsC2XM/ZLd2&#43;XLl4jJS2Vzl8tvXnQXQEAAADlIlwCiGs2VE5Nk9ZkSGNbuJ1hKCiUFh&#43;TRm&#43;Uvr1eWsnYTAAAgHIRLgHUCV0aSn/oKH18rvSdpm5nmN4/JJ23Snp6t9sBAACAUgiXAOqUbzSW3kuXXusinV&#43;JGWa/LJTu3S5duV7KyXc7AQAAUIxwCaBOuq6ZtKiH9Kv20vCmUqMw3w3/4lox7cQ/AAAAOINwCaBO&#43;0kraU66dLS/t5zJr03Y/EELKamcd8fjX3kT/1y1QVpLKyYAAMBphEsAcAY3ksabsPm7jtJiEzSHVTA2c06edN5q6a5t0msHpd0n3QUAAAB1EOESAELITJb&#43;mi49kVb&#43;MiZHTkm/3CPdsFFqs1wasMoE1K3SWyZs5n/lrgQAAFAHEC4BoBz3tZE&#43;6yldfrbbUYGlX0jP75WuNWGzyTJp6FrpkZ3SJ0fdFQAAAOIU4RIAKtA3Wfqgm/RYWuXeNO1amX8/Ij2cK31jjdRuufTdTdILJnxuPuGuBAAAECcIlwAQpgfaSIt7SkPDbMUMtuOk9OoB6b&#43;2Sp1XeF1of77LXQgAABDjCJcAUAkDzpLmdpNe7uyV/bBdaB/YIV24WnrvkNsJAAAQowiXAFAF3z1HWtJT2tdXeq2LdFdr6euN3YWVtPCYNHy9NHazlMuMswAAIEYRLgHAh&#43;aJ0nXNpP9pJy04V9pjwuaLnaTvt5C6NXRXCtOf9ksZ2dLPcqUc1s8EAAAxJqHQcOWoZ8cn2W5kgezJ29pMVwHgS08TbFYHhZreydLyXq6CSltm3rPmHZH&#43;76j0T/OvXbokXJc2kUamSDc3l5rUczsBAACiFC2XAFCN&#43;p0l3dNaeqerdLif9H43b3mTlonuCuX4hwmjP9kmnfO5t47m6wfdBQAAAFGIcAkANeiKs6Un0qRVGdK4Fm5nBeySJq&#43;ZYHm9CZgdVki3m8BpW0IBAACiCeESAGqBHas5raO3fuY3KjER0LYT0nN7pH9bIw1aJT2z210AAABQywiXAFCLLj9b&#43;vhc6e2uUv9KLm3y2RfSPdul7isJmQAAoPYRLgEgCoxKkbJ6Sv/sLv24pZRW310QhnVfEjIBAEDtI1wCQBS5pIn0fAdpex/p1S7S6Gbhv1EHhswnd0n5X7kLAAAAagDhEgCi1PUmWL5uAub&#43;ftKv2ntLk4TDhsz7d0htlkt3bJOyj7sLAAAAqhHhEgCiXEo96SetpL93l1b2kh5sK7Vv4C4sx6FT0rN7pMwc6dqN0nuH3AUAAADVgHAJADEkI1makipt7S09lhZeyLTeOigNXy9duFr6zV63EwAAIIIIlwAQox5o44VMGzbbhRkyFx6TbttqQukK8/M7vKVNAAAAIoFwCQAxznaT3eZCZteGbmcFtptQ&#43;fNdUgcTMsdsluYfcRcAAABUEeESAOKEDZnrM6U/dJQuDnPyH&#43;vP&#43;6VvrpWGmm2GKQMAAFQF4RIA4szYFtL87tLcbtJN57idYfj7EenmzVLPbOmJXW4nAABAmAiXABCnhp4tvdRZ2pAp3ddGal3fXVCB1fnShB1S5xVe11kAAIBwEC4BIM51aSg9kSbt6uOtlzmokbugAptPeJP&#43;dCRkAgCAMBAuAaAOsetlftpDmtVVGpnidlZga0DIfJyQCQAAykC4BIA6yAZLGzCzeko/bik1DuPTwIbMB03ItDPMEjIBAEAwwiUA1GH9z5Ke7yDl9pEeS/O60FbEro1ZFDIf2&#43;l2AgCAOo9wCQBQk3rSA228yX&#43;ebBd&#43;yJyYK7U3IXOKCZmFbj8AAKibCJcAgBLube2FzKdMyOwaRsjcbkLmJBsyl3sh8xQpEwCAOolwCQAI6R4TMtdXImTuOOmFTDvxzyMmZB455S4AAAB1AuESAFCuwJDZLcyQ&#43;bAJmanLpTu3Seu&#43;dBcAAIC4RrgEAITFhsy1JmQ&#43;HWbIPPqV9Ks9UveV0pjN0idH3QUAACAuES4BAJVytwuZz4QZMq0/75e&#43;sUa6cr30Tp7bCQAA4grhEgBQJf/tQuYv2kvdk9zOCvzlkDRyg3SRCZp/3Od2AgCAuEC4BAD4cmcraU2GFzIzk93OCiw4Kn1/i9QrW5pNSyYAAHGBcAkAiAgbMlf0kl7sJH2jsdtZgVX50qgNXnfZ7ONuJwAAiEmESwBARI1pLn18rjQnXboqxe2sgO0uO2CV9OQutwMAAMQcwiUAoFoMbyrN7iot7CHdYgJnRU4USvfvkPrkMB4TAIBYRLgEAFSrwY1MWOwkbcj0JgFqWs9dUIYVx73xmJeuld495HYCAICoR7gEANSILg295Ut29JEmp0qJCe6CMvzziDRivXTtRmnRMbcTAABELcIlAKBGNTKfPBPbSkt6SsOaup3leOugdMFq6dYt0pYTbicAAIg6hEsAQK3okyz9NV2a1VVKq&#43;92lmP6PuncldJPd3jjMwEAQHQhXAIAatXIFGljb2lCG6lBBV1lvzShcuouqasJmXduk14/KO0vcBcCAIBaRbgEANQ6Gyp/niatyZR&#43;2MLtLMf2E9Kv9kjXb5RafC4NXCVN2SkdOeWuAAAAahzhEgAQNTo1kKZ39JYvuTrMNTKtrC&#43;kSblS6nLp9m1S9nF3AQAAqDGESwBA1LHLl7zVVZqTLl3cxO0Mw9GvpOf2SJk50nUbpQ8PuwsAAEC1I1wCAKLW8KbS/O7SHzqawJjsdobpjYPSFeukS9ZKL&#43;53OwEAQLUhXAIAot7YFtKKXtITadKAs9zOMH10RLpls9QzW5qYy5qZAABUF8IlACBm3NfGWx9zT1/p1S7SHa2kXknuwgqszpce2&#43;mtmWm7zdoyAACIHMIlACDmtEyUrm8m/bK9lJ0hvdhJ&#43;mYlxmbaCX9sK2ZfEzJfPuB2AgAAXwiXAICYN6a59I/u0ofdpOtM6AzXchMyb9okXbWB7rIAAPhFuAQAxI1/P1t6rYvXmnl7K6lJPXdBBebked1l7TImh1krEwCAKiFcAgDijh2H&#43;Wx7aUdvaUqq1D/MSYDsMibds6XZJmwCAIDKSSg0XDnqDVglLf3CVZxuDaW1ma4CwBc7m6ad9CRQ72RpeS9XAWKY/fx4x4TGP&#43;6Xtp1wO8thJw&#43;ys9Oi7ikwZ0aP7TLPlX1S7km3Mw60qS/9ur00MsXtQLU7YZ5LU3ZKvzfPpb0FbmcY7LhyO6a8Mt38gWhAuARQjHCJuiD/K&#43;nBXOl/drsd5birtfRMO/Nh6eqIL8fMc&#43;Fp8zz4835pZ1CIPG4ui0f9zjLnUj1dBdXCfikx2QTK3S5MVvW51D1JWpPhKkCMIFwCKEa4RF2yzHyeTNklvXXQ7ShDWn3pv1qaQNrW7agj7DjUF8xJclErb/sG0g9bSKNitNXLfqnwc9saaYLk9jBaruNVwwRzLAa4SjV62zx/bt9auuU31byebJf1a&#43;KkRc4GR9sy&#43;btKtkyGq8D8rerx7RZiCOESQDHCJeqiN024fHK3tLiC2WI7mHB1qwmZD7RxO&#43;LYDBPAbt7sKkF&#43;31H6vgmZ0eqU69L6B3Oyvyso2NguipWVGAcn9rabb5GaCpehztmK2C9snu0gXR2jX1TY59YjtmXSPb/CfV6F81wK/FtZhEvEGsIlgGKES9Rl9&#43;8wIdOEkop0MiHzSnNSfFFj6VtNpHMS3QVx5LqN0htltOh2MZ&#43;76WazAbM2xoMVdTksr5XIdnf1q60JQPYxTmgjNYrR6Q/7m/Mm20IfyE5ulVWN3WLtuOafbPOC15cVnGHa49rcvH7sONARURg0y3quVfb51do8l8aZ59LEtlKDMoKi7SlgZ6veGtCq3iNJWkW3WMQYwiWAYoRL1HWTcr0ubpUxuJEJm02lsebk0Xb5iwejTbi0LboVmdbRO2mubq&#43;b&#43;2IDy14TWCKQG5UcEBZtiPxec&#43;me1tJZAfvjobEoKatkwLOP1f7Nhpvna3XJMJ8jOe5zpKE5noG5vLyxh4HXixaVfa4FPq9am9D8s1TpZvPcCue51DtHWnncVZzfdPC65AOxJObDZX3ziv1GY&#43;nH5sUXL/33gdpCuASk9w9Jd26X1ga9FsJxvfkc&#43;u450lUxPhtned1iA9mQMifdVapRqBPvcAR3Q7Qn/LY18qdtTPCKxjQTYYHh0j7cLwdUbzdf2yU50fzOIrZl8mh/r1z0BUFRV9J4YY9nK/O8suORJ7WtehfWektKhtmeSSak02qJGBRT4fL6jd6bU1nsC7GIHRtjv0VmCmcgfIRL4Aw7m&#43;wLe6V1X7odlZBhXjcXNJL6mn/PM/9eaLZYY9f6tI//w8NuRxlsl8bxrVylGsw8II0xQdcGl3DFQ5dWv142x&#43;2mTa5i2MNwaqBXri7lhcsi0&#43;14xdzYX&#43;LFdnV9yITJSLUsBoZL&#43;8XHnzpKN5zjdgAxJKbCpf2A&#43;Y&#43;AN8pwfKep921SrH&#43;LDNQEwiVQml2qwoasDVUImUVsd7lLm0jfNNvdrd3OGPHaQem&#43;7SXHggW64mzp/W6uUg26rzwT8L&#43;W4I1Zsy1F9sR&#43;THNvfzAmQCn9fm6/8FhZze/l4YTLIva69guMO7ZJ&#43;0&#43;5nVGorOdaJJ9jtrtw46Ulw&#43;XxMo4bEO1iKlxaX18t/auCGf1CsWMzLduieYsJmzfxbRDinB03Nv9I2SeEZQlupSFcAh472c9b5mT40yp8BgWyS3rYLz7thED/boKZXSw9FtjHbyc9CtbVfL6ur6a5DyoTVlBScDfL17pUf28u/l5V86j5vH4o11WMAWdJS1iLFDEq5sKlnf75B1tcxYfq7sYDVKclX0hvH5SWHpe2hGhNOWrOKCobKstCuARKOlAg/e2w9MlR6Z9HzkxeUlWDGnljAGNh/ciBq6SsoLkPLDsZzlPtXCWCCCtVF9zNsiZawvh7Vd7r5rPcDvsK9HCq11oKxKKYC5eWna7ZLoJsp7uuKrvGkp3&#43;urp1bCBd0kT67xjrBoXoYk/m7PPdTmi1xYTG5VWY2KKqCJdA&#43;WzXvlcOlD8nQDj&#43;2Em6pYxuntGirHBpVcfMsYSVqiNcxobgyapS6knb&#43;3jHDohFMRkui9hp0v9kQmZgC01VZpOrCbY7ru2ae34jaWSK9y/qjp/vkv5&#43;WNpWxQkMqjJrZaRc20x6o4urACjTdvNZZD&#43;T/nLI&#43;yKosgv22/UzGwScULavb8Jay&#43;iamO67m6RXTZAOpTpmjiWsVB3hMjY0NMcr8L3ilc5M5IPYFtPhMpS386Tf7vU&#43;5IMnJokmdmB9MBtAf9QiOhcSrm2LjkmLzbbsuDfDXKS6fNaEI6di6/4Ge7FT2ZNmACib7TZru7B/bjbbfXZzFd8H7OeF/Xz4gfl8uLqWPx9sC&#43;2NJmCW5f420tQ0V4kAwkrV1Ua4fOugdG1AF0/&#43;XhULDJd2WZOTA7wyEKviLlwG&#43;uCwFzTtiX1eQdU/2Gtav7O8f22X2i4NvensL2tSM914a4KdDOO9Q17XTtvFsyJr8s2HYtEnJCrNtpg3qucqlWBPZm0XNzvxCAD/frnHO/m2obOq7mglXdhYGlqLnwlFn612iEoof&#43;joLQUWCYTLqquNcNl/lbQsoNs0E9OUz76OfrzVVQzCJeJBXIfLQNPMC/hHAS/gWNQjYB3PWBbNLcqxKFQruGXD4SXmJPS&#43;Nm4HgKhgezPYtSMn7PC3vEngZ0I783q3y5w8UEOvd9v9d&#43;xmVwliJyZ6u6ur&#43;ES4rLraCJdnLS35ZfCbXaRrWG&#43;8TL2ypVUB50R9zOf558xxgBhXZ8KlZdfq&#43;p1ryawJX5ojG8vdIRGdbEukDY52hkl7Esf4XSA2zTAB7eYyAlpV2d4uNnTaoGlncK1OdlkSuzxJKL/tIP0oAovLEy6rrqbDpf1bNVlWMlwWDnQFlGKHcV2zwVWc33eUvh/hSbGAmlanwmVteGa39NGRmp/hE9HJrgdnT44qy3aR7nOWN2HGYMIkEDfs5D&#43;2Z03wEIFIfF50NyGzcdD7jf1i6lYT&#43;q442&#43;3w6Spzchyqe6ztTv9eBCb3IVxWXU2Hy4dzpUd2uophv&#43;RYleEqKGa7xt&#43;xTdpX4DVCFEk2f6MveG4jDhAua9BnX7i1Cc2/wS2aftdJq0vsmITuJqTFEntCd5k5mavulgQA8cEuPfSC62lTHZ8PL3WWborAjJS/2yeNK2Pt6XvN&#43;92TPte&#43;JFxWXU2Hy&#43;AlNWwX7cciOLlTvOiZHXp4EONTES8Il1EiVJfddT7G4sQK28WzIo3reeMQ7ERHA812UWPzxHWXAUC8s93nHttZ9vqSVWGXN3ktQksMjd7oLQ0Wit9ufoTLqqvpcBn4&#43;xqaD&#43;mD/bzWOJwR/HwuYpch&#43;nUH6Uom0EMcIFxGsd0npflHpYVms0FzW1BrZ6xqb95E7Td0dsmV88y/AICK7S3w1sv91zFvIqCiz4Sj5ox&#43;YyW/jLRf1i2NUCtJRWNHXzAnzbYrblUQLquutsNlPrOelvLuIXPus95VDJu9W9aXnm0fXevZAn4QLgEAiHGP75I&#43;PuJ1oQ3ni8hIhkvrpzukqWVM7uNn/CXhsuoIl9Fn4KqSPRB4PiMe2S9NAABADLPj2z7oJm3tLT2aKl3axJtArGgLlh7hces/T5NGprhKEDtpkW3drIp6JqQ0DVin95hJL7tOugoQQ&#43;wY6uCu7efGyRJzQCDCJQAAcWRSW&#43;nv3aX1md52d4iJxKpjbFd5t2m7A1ZVz6AT8GXMvB51bHAqarVEaXZt24m5ruKk1Tf7zGsViDd0iwUAoAbZmWCn7avedZDtDNV2bPs1KVJ/8&#43;&#43;rB6Q/uNbDH7f01sitDtdtlN4IMbmPn8Xhx2yW/hzQ8vlUO2beDkdNdosNngHVz987HoXqNj69o/RD1rREHCJcAgBQQ140IemWcia/qQ52fGUgGzz/rXHoFk2//tc8vu&#43;V8fiqOnOsHU/6oDk5L2JPyO2JOcpXU&#43;Ey1Ayos7qW3U26Luq&#43;suQKAI&#43;kSj&#43;j1RJxinAJAEANuWaDt7RINLDLH9jQEayd2W9n8ratm&#43;c3cjsroax1/K4ytzfbhI7Kmm2O1yhz3IrYYPzRua6CMtVWuGxsftcRJqkpZrvEnr3MVQyOD&#43;JdiI8VAAAQ7zaf8EJg8DbvsNeFb/Bqb2H8UNt31ktP7XY3FKSs9YvXmtuuiuCW11VVvB2gNgS/TnowiQ/iHOESAIAaMjzGugquPB56&#43;&#43;sh6b7tXne/X&#43;5xV3aujPBjtC2siQmuYhw85QpADLBjrAPZNb6BeEa3WAAAapDt5jl9n7QlYAxWpNn1LmuSXe6kfkAAtGwraCA762tOhqtUUv0sqcCdrdigeZI1FCtEt9jokGSOzZfuuWtbdL40z93AL0uAeEO4BAAgziw65o3tXGL&#43;DZyV1p7kVucsteUhXNasmgqX9nlmxxIXIVyWFBwuTw30ykC8IlwCAFCH2DFgHx2RtpURMpcfd4UII1zWrJoKl31zSj5n7BI4S3q6CgiXqHMIlwAAoNhnX0hvH5SyzL&#43;hWjmPmcRSldZPuzSFXaKiKgiXlVdT4TIwPFlvdJGubeYqIFyiziFcAgCASpmyU5q2T9peiZBZ1XUurZafS/sKXMXY1Nub6Adlq41wSXgqjeODuoZwCQAAquSJXdL/HS2/JbODCYE/MKHSz6L6/7bG&#43;z1F3unKrJsVIVxGB44P6hrCJQAAiGo/2CL9YZ&#43;rGI&#43;nST9t4yoIiXBZ&#43;2xX7sZLOT6oW&#43;zzHAAAIGqdG7Tw/LoaXmoFqIrJO88ES6tH0PMYiEeESwAAENV6BZ2Ur6nGNUKBSHkrzxWca5joCHUA4RIAAES1vsmu4Kym5RIxYFXAEi22a/IDdOVGHUC4BAAAUa1dAyk54IzlQIHEhBGINTZgAvGOpzkAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAAADAN8IlAAAAAMA3wiUAAAAAwDfCJQAAiFovH5BafO4qAICoRrgEAABR65Gd0v4C6fhXbgcAIGoRLgEAQFQ6VSitzXcVAEDUI1wCAAAAAHwjXAIAAAAAfCNcAgAAoEoCh8IWun8B1F2ESwAAAFRJQUCiJFxGqwLlTM9UckKCEsramnVV//6jdde02Vq6&#43;ZAY6oyqIlwCAICY0iNJSnBl1C4CZSzYpbWzsssPjHkbtWzZm/rlj0ZpQOcUtR10tz7YRMSMC/s&#43;1t1pye6LhGRlvrjGXVA9CJcAACBmJJpUOamtqwCoFnmf/Y&#43;Gdemt&#43;xbsVIHbhxiVf0A5uUVfFOQre/sxV64ehEsAABCV6pkgaVspA/U09RvPcRVEnXfyXAFRbfKSQhUWFm3HlbdjrRbOvE0ZJV5v6/XURf&#43;maTnES4SPcAkAAKLWw6lSy0TvhKVtfekhWi2j2qM7XQExJElNU7tp8I3Padn2TzU53e0&#43;bb3Gj31dG10NqAjhEgAARK3rm0l7&#43;kqnBkq5faRrTB3RIyFo8KttbUbsSmw&#43;SBPmvaErXP20RfdqzsoyWi8L9mvjRzN11&#43;j&#43;6trszARByWmZumzsM5q9dKuOVtTwmb9H2R88o7GXZSot2d1GcpoyLxurZ2Yv1Y7AoZ9rXtKg4t/TTINeCjV&#43;cKNmXd6s&#43;L40G/SSSl5rjV7MdGMQkzPlDUHM146ls/XI6K5qVvRzXS/T2OmLAn5/gfZv/EjTx15UfD&#43;T0y4Kuk5oBfs36qOZd2l0ZtqZiZXcY5z&#43;0UbtD3mMyrufZ45VWfehIGuK97vaj9IHbt9pkwZ6t3l6S9YTn7v9zun7On2sLgu4r2f&#43;njsqnuypEAAAAHHjD3sLC/XZmS0py11QDeoH/B67vZvnLkDh1wKOS3X&#43;DSq2rXDWFafnXireJi9xF4V0uPD/3ZtU4vqpz2W7y844vvH9wtsySl4v1JaUMbXw030n3U&#43;VdHLz3MJx6aF/rmhLMne2&#43;KeXTC55ecgHsqRwcuB1NNnsCVTy8skLNxa&#43;Py494Polt6SMpwuXHcwt/OTBjMKkEJd715lauOSgu/kSThbu&#43;3RqYUZS6J8r2pIyHiz8JDf4GFXufirdPM6A&#43;7Bt1hWhrxe03fP/jrmfKCw8uKSi&#43;5paGOKpUAItlwAAAHHkt3tdwekVNG41kr4W0FJpTyqvbOqVEcuaKPOqW13Zk/veWm13Zatgy2xd32uYns&#43;usB1L&#43;dkTdP4Fz&#43;jzI25HkbwFuqfHtzR9vauXIX/BVu1y5erw2CW9NKycO5GffY8u6dxLFz1W9oy79jFePzOn1ORHeVlTdcH5E1TRYcrPfkwX/ds0lTe8taL7qfWTNPy5LBUd5jYdhqjil36qOjU9yyse&#43;ZceH1LRfc3VwQoeC&#43;ESAAAgxk3fJ6UtlxKWSJ994XY6t7dyBSBMTdpdpEtd&#43;bQPVmqPK0q7Nf&#43;h72pOQMhIuW6mVu48opOFhSo8eURbFk7VkMBks36Cbn03cOTmEWU9d51&#43;FXAbSSNePHMbx/O0Y&#43;18PX1lqlIu6ax27jrVIT/f3okUXTdzpXYft797u&#43;bfW2LgqfLy7ExVScp4cL62HDlprrNbWb8Y7F3orH/8n1rryqcV5Gjm9ZNUHAfTx2nWyp06ctKbSOl43iYtnBoQANeP15PzzQu5DN79TNKQqQu13d7Pk/u06sURJQJk7qQ/a7lLl4kDJuq4PZbbZpXs5jx5ScBkTjt0Wy9v95Hlr&#43;mp4r9Hkka8sUZ59vecvq87tHb&#43;NN2Uka5mFSRWwiUAAKgVc8z5WscVUqoJRa8fdDujVEGh9MhOqYO5vw2zom&#43;7dYs5sTzp7myQ/2R2XVRWvUQ1cMVSNv5dE2cEpML057Rg5o3KaNNYibae2FgdBt&#43;v9&#43;bdUSL4LHrq/84ErX2L9OykXFcxku7QvBljztxGUlOldrtYd7&#43;7Qwfv73v6KtXHBKlZyzTzxgy1snc4KU0X3/1r3eBdWCx98gJ9MuVidWhs7mFSK/Uf/xtNLpHs/qYNAQ&#43;pYPnbuqf4AafqF7Oe18iMNrI/biU17aTBd/9C93rV02Z8vKmcpV/s/Vyt&#43;fcPVpr9vYnN1WPMM3qhn3epZ4V2HnDFSjq0N3Bk6jn6Zo8uauoeX1LTVHW7eJxeWrmuOIyWhXAJAABqhQ1rW09IO00oeijgpKw22aU0bFCzobfx0jNbyjLpYXMft5n7e8IEzWjbymKXbmGSHURSbvZrWuTKVr&#43;Jl6uXC0yBUgZ/Tw8Ghq9l/9Tmooa5rQs1wxVPu/cmDU5x5Rr3oB4a2dELtUVap&#43;uKEqFtkl6eMEAl7mJiK2Ve4sqnndCpr1zRWPuv3wZ0o83VXb3rB0yk47b652uyu8Zpi3eU0wU4xP1Uunpf44qn/UOr97tiJZXsRmvu76B&#43;Gv/yUm2tcEamkgiXAACgVqwKaPxYbcrlZKRiL&#43;w1J0HLTWBaUj3byA1eF1Mbeo&#43;ZE8XALVYkm7M7u7VvIE1JczuByjhVYKJSgH7tdbYr7vp8jit5ruldsgtpsVLha7eOutf89q0LvIJzxYC2QaGptiWpaRtXPK2BbcythH3KXRwl35iFKbHPf&#43;qVEQHfBuRn6/mbBqhjkyZKG/6IPsjeU/FMsQbhEgAARIXkLHNKV8H2X1vNKepJyWa96tjCkZgQnVtqfWlaR&#43;mL/t62tbd0da21BiGWHdn&#43;if7hyqf1TSvZaocK5OvoblcMW5IyhnZWrc2JldhRI2cs1rShwX/pfOW&#43;97CGZbZW71vnaUsFDZmESwAAEBW&#43;LKx4q002vE1sK&#43;X1k04OiL5tRx9pXAt3Z2uBDecvVXG8l1//u1/qvlJqsjR6tth1RCvfmebKnn7f7KRafGrFgSs0a1vRJDplbce18u6&#43;auJ&#43;olakZGrc3L3at2G&#43;pt0yRKmB3ZqN9dO/paHTSs&#43;KG4hwCQAAaoUdD&#43;hHkjmLifTWroH0A3MW/XZXqcAEtsDNhrfJqVIjcz14zg36Gz57ZkrRiLNLrJTVJfp7m6V1X0pHTcKNls38F5MKtnyoR89MG2oM1r3fONP19ez2JQYj6p8bt7hSkII9WjnflU8bpDTX1TSpcWuv4HyQtbPcwBJ72qnDEFc87QNl7YyVR5io5l0u1rg/fqIdB3dr5axxCuz4vP6ed5XtyqHw9ggAAGrFpLbeuEB7MlKZzQbA6R2l4/0jv23rLf3O3PaoFBNaEkpuKO3HLV3BWXxMSl5aPduPy&#43;kSHe26N3SFKFewf7GmDh1totAZSWOm6LIurmJ06n1NwMQv0j&#43;enq/1IXJT3qI/67HAjHrH5erhxi226PRNlYioT83UIrvaRwkF2r94irrdPE/FC3S0yiy5rMZbK87MQHtavja9&#43;Ygec7Xa1OGCMa7keer5&#43;ap0T9nqsHiHwh4NmtRKGSOf1ot3uLqVf1KnXDEU&#43;x4NAABQ40aaAGfHBZ4aWLnNBsAf0kcvKtxqwmWPoNbLfJP2qmOLVS1NoHqwratEpXwd2rtZS2c/omHp52tSYFpLGqFXHrlEge2MiX1G6ueprmItulnDbput7F1HvdbH/EPavOgJXTn0VwETwKRq8vf6nOnymf4N3Ru4TGT&#43;rzR0zIzi2yg4ulWLnhmm9PMnaf3uo2dup02HkutnLvuR7p6RrT32Cvk7tOiJoeo1ek7A7609LXrfUGI5k/wZw3XZ&#43;IDjZBQcPaDcdYs0&#43;5mxGtTsKr1bHXMAJTUu8ffTnN/oo032CBXo6NZ12uRCfe67V6nZoLGa/mGONh8ouo/52pP9oX73xumKJ7VZiS8XghEuAQAAUGW3t3KFGtQwofRmW7TthEbB3Zlre9vTV7qumbvjUWLSwMAlMZKV0qqzBox6WPMCWw&#43;Thui5xTM0smPQNKmJmbr59ZJrWK6fPkqZbZuovr295BR1vmCCFgQkvPTJ72r8gMDRhF00fNrUEt0t8&#43;fcXHwb9Zt01AX3zNPpu9O68ZnfldhN334wMNnma87NmWqdbH9vO10wYcHpYJmUVF78qSGth2rqrBEBxylf2c8HHKfTj7O50rpfoFH3/Emf5ZVcyiRiWnTRvwcGeX2gG7skm99fX006dtfMjd7er06dUN5nf9KtV2Soc/Oi&#43;5is1pmjNSMg9A5&#43;/HJ1d&#43;VQCJcAAACoMts19vkO5ly6/pmuy9W12QD5exMg801oC95si7ad0Ci4O3Ntb7EnSalXPq2F6&#43;fptszQc8SmDHlaq&#43;fepowKM1yKhk5bpoXBa0QaTfrerXlzS47nKyV9nOY&#43;cknAZEJNNGD8u5pczg&#43;lj3tfOfMfdLXalKiOI2do8bShYc6021qNqyUTd9G3fzO5/ONsfK2eeXFVIH3cXL12U3q5y8bY1ykAAABQZTZg7uoTuhtzJDcbIL9Pl&#43;hKaqPuozLK7cqY0qWf&#43;l17p5566QNlb9mrLe/ercFp5f2ECU5Dn9Oy7Rs0/6U7dW2/LgEByoTTjEt1y9OzlLV9p&#43;aO66vmIdOIvY1pWrE9S7OevkWXdim6Bfvz1&#43;rhWVnavmKahga3nKYM0MQV27Vw2i0aUjSdaVKqMq59WO&#43;v3K0V065Q55R2xcE3KaOdGnlFp5E6nXfm3qac1ynocitJ53QNeESpKarvymc0VeqFqcXHNSm1l84pdchSlGkC2c6ix1jiOHnH/dJbJukF81i3HPm9hpZ4bodzP821Op135jZTzlOnEFdKGTBBC1e9r4evzTgzA2xKF/O7X9JIN542ddgftWH&#43;S7rz2n7KCJgmNik1w1zvac3K2m6O7VAF/zmCJRTauW8BAAAAAPCBlksAAAAAgG&#43;ESwAAAACAb4RLAAAAAIBvhEsAAAAAgG&#43;ESwAAAACAb4RLAACAGnSKefoBxCnCJQAAQA147aDU6nMpMUtqbv59&#43;YC7AADiBOtcAgAA1IDeOdLK465idE&#43;S1mS4CgDEAVouAQAAasDqfFdwEt2/FbGtADW5AUBV0XIJAABQA&#43;pnSQUBZ12t60vPtZeubeZ2BDj2lTR1l/SHfdLOk25nDWluUu&#43;4FtJP20hN6rmdABAGwiUAAEANCO4WayWYrZ79XwiBQbQ2JJZxv&#43;JBaxOgn&#43;0gXZ3idgCICMIlAABADXj9oPTDLdLhU24HalXvZGl5L1cBEBGESwAAgBpgw&#43;X1G12lEpJreIaM41&#43;5QpyzLbMnB7gKgIggXAIAANSAUN1ii4TqHptaXxrbQnqwTc12UX10p/S7fdKuGh7rWVOKuhsTLoHII1wCAADUgL4mXC4vI1xaBSbolDX&#43;EpHRMEs6QbgEqg1LkQAAANSAyalShwbe9vuOUuOgs7Ci0IPq8dpBjjFQ3Wi5BAAAqAUDV0lZX7iK8VBb6WETQFE9emaXXGs0I1layYQ&#43;QETRcgkAAFALhjd1BeedQ66AahEYLK1JJswDiCxaLgEAAGpB/ldSo6VS0eSsDRPMPsYAVpuEJa5g2Bl4v&#43;jvKgAihpZLAACAWpDEWRiAOMPbGgAAQC3plewKxpeF0jt5rgIAMYhwCQAAUEsGN3IF513GXVaL4NB&#43;bpIrAIgowiUAAEAtGRE0qc/CY66AiHr/sCs4553lCgAiinAJAABQS0akSO0auIqRfVyaQ9fYiPswqEX420GhHkBkEC4BAABq0eVnu4Lz16BWNvi3u8AVnJEm1AOIPMIlAABALQpuRQtuZQOAWEG4BAAAqEVXBYXLvUGtbAAQKwiXAAAAAADfCJcAAAAAAN8IlwAAAAAA3wiXAAAAAADfCJcAAAAAAN8IlwAAAAAA3wiXAAAAAADfCJcAAAC1qF6C1DjgjOzYV9KRU64CADGEcAkAAFDLOjZ0BWftl64AADGEcAkAAFDLOjRwBWcD4RJADCJcAgAA1LL29V3B2XLCFQAghhAuAQAAaln7oJbLrYRLADGIcAkAAFDLOgaFy22ESwAxiHAJAABQyzoHTehDuAQQiwiXAAAAtaxbULhkzCWAWES4BAAAqGWt60uJCa5isM4lgFhEuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAiEIFha4AADGCcAkAABAFzk1yBeOECZZTdroKAMQIwiUAAEAUuDrFFZwX9tF6CSC2EC4BAACiwE/bSC0SXcXYfZLWSwCxhXAJAAAQBZLNWdmPWrqKQ&#43;slgFhCuAQAAIgSD7SRmge1Xj62y1UAIMoRLgEAAKKEbb38r6DWy7cPugIARDnCJQAAQBSxrZeJCa5i5OS7AgBEOcIlAABAFLGtlwAQi3j7AgAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAAAD4RrgEAAAAAPhGuAQAAAAA&#43;Ea4BAAAQJ0yK88VAEQU4RIAAABx7dwkV3Cm7HQFABFFuAQAAEBce7CNKzir810BQEQRLgEAABDXrm3mCgCqFeESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAKCG5X8lPZQrtV8hJSyRUpdLbx10FwJAjEooNFwZAAAA1ejdQ9L4rdLuk9KXQWdgDRNcwSjvsspqkSg920G6OsXtqKNsiC&#43;S/DXpi/6uAiBiCJcAAAA1ZNAq6bMvXKWGNQ7qr3aODZ3tpavqSOgkXALVj3AJAABQQwaacJlVS&#43;GyLIGZs2V96cqm0nCzxVvoJFwC1Y9wCQAAUEPeyZNu3ybtOOF2lMGenBWdoNkesVXtFfuV&#43;7cqkoJaOmOdHedahHAJVA/CJQAAQJyavk96JFfKPel24DTCJVA9CJcAAABx7lTQ2d47h6SfbJX2FbgdTvBEQvGq/1lSVk9XARAxhEsAAACcNifPbCZ4vme2vXHa2tm2PrPnAtWFcAkAAAAA8C3OhmoDAAAAAGoD4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4BvhEgAAAADgG&#43;ESAAAAAOAb4RIAAAAA4JP0/wGG37f0oS5d1gAAAABJRU5ErkJggg&#61;&#61;" controls="" type="image/png"></img>
<p>While both projects try to achieve the same base goal i.e. generating source code and documentation from Notebooks, the Julia version aims to start from Pluto notebook while the python version starts from a Jupyter notebook. </p>
<p>On the documentation side, I am using Mkdocs as the document generator while the original version uses Jekyll as the static site generator of choice.</p>
</div>
## Getting-started

<div class="markdown"><p>Follow the <a href="https://sapal6.github.io/Nbdev.jl/tutorial/">tutorial</a> to start experimenting with Nbdev.</p>
</div>
## First among the version
<p>This is an alpha release of Nbdev so expect some breaks in plumbing here and there. Some features are still under development and are not included in this version.</p>
<ul>
<li><p>Feel free to log any issues, bugs &#40;which I expect to come&#41; <a href="https://github.com/sapal6/Nbdev.jl/issues">here</a></p>
</li>
<li><p>Anything that you feel like is missing and want to discuss the same or havean idea then start a new discussion <a href="https://github.com/sapal6/Nbdev.jl/discussions">here</a></p>
</li>
</ul>

## What&#39;s more to come?
<p>Well much more can be expected some of which are already thought of and some are not. However, the immediate requirements for future release are the following –&gt;</p>
<ul>
<li><p>Backlinks to source code.</p>
</li>
<li><p>Automatic document &#40;markdown&#41; generation using Github actions.</p>
</li>
<li><p>Testing for including plots/graphs from notebook to markdown document.</p>
</li>
</ul>

