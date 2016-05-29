### Determing position on the window

```javascript
document.body.scrollHeight // this is the whole page height in pixels
```

```javascript
document.body.scrollTop // this is the position of the current viewport
```

```javascript
window.innerHeight // the height of the browser window.  this can change if the user resizes the browser
```

```javascript
// determine if the user is at the bottom of the screen
document.body.scrollHeight === document.body.scrollTop + window.innerHeight
```